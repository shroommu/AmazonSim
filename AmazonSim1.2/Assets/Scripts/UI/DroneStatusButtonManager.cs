using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DroneStatusButtonManager : MonoBehaviour {

	public static DroneStatusButtonManager instance;

	public List<GameObject> droneStatusButtons;

	void Awake()
	{
		if(instance == null)
		{
			instance = this;
		}
		else if(instance != this)
		{
			Destroy(this);
		}
	}

	public void ActivateButton(int buttonNum)
	{
		droneStatusButtons[buttonNum].GetComponent<CanvasGroup>().interactable = true;
	}

	public void DeactivateButton(int buttonNum)
	{
		droneStatusButtons[buttonNum].GetComponent<CanvasGroup>().interactable = false;
	}
}