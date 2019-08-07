//attach this script to every menu panel

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(CanvasGroup))]
public class MenuMethods : MonoBehaviour {

	private CanvasGroup canvasGroup;

	//private bool gameRunning = false;
	public bool isOpen = false;

	public bool isPopup = false;

	public bool isCentered = true;

	private MenuMethods tempActiveMenu;

    void Awake()
    {
		//moves all menus to center of canvas so they can be moved anywhere in the scene view when editing
		if(isCentered)
		{
			var rect = GetComponent<RectTransform>();
			rect.anchoredPosition = new Vector2(0, 0);
		}

		canvasGroup = GetComponent<CanvasGroup>();

		//sets all menus inactive at start of game so CanvasManager can handle which menu is active
		Display(isOpen);		
    }

	//if _menuOpenBool is true, make this menu visible and interactable, else make it invisible and non-interactable
	public void Display(bool _menuOpenBool)
	{
		int _alphaInt = 0;

		if(_menuOpenBool == true)
		{
			_alphaInt = 1;
		}

		isOpen = _menuOpenBool;
		canvasGroup.blocksRaycasts = canvasGroup.interactable = _menuOpenBool;
		canvasGroup.alpha = _alphaInt;
	}

	//makes _activeMenu (passed from CanvasManager) non-interactable, makes this popup menu visible and interactable
	public void OpenPopup(MenuMethods _activeMenu)
	{
		_activeMenu.canvasGroup.interactable = false;

		//saves _activeMenu to temp variable so ClosePopup can access it
		tempActiveMenu = _activeMenu;

		isOpen = true;
		canvasGroup.blocksRaycasts = canvasGroup.interactable = true;
		canvasGroup.alpha = 1;
	}

	//makes tempActiveMenu (set in OpenPopup) interactable, makes this popup menu invisible and non-interactable
	public void ClosePopup()
	{
		tempActiveMenu.canvasGroup.interactable = true;

		isOpen = false;
		canvasGroup.blocksRaycasts = canvasGroup.interactable = false;
		canvasGroup.alpha = 0;
	}
}
