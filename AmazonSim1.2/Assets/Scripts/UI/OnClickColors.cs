using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class OnClickColors : MonoBehaviour {

	private Button button;

	public Color onClickColor;
	private ColorBlock defaultCB;

	private void Start()
	{
		button = GetComponent<Button>();
		defaultCB = button.colors;
	}

	public void OnClick()
	{
		ColorBlock cb = button.colors;
		cb.normalColor = onClickColor;
		cb.highlightedColor = onClickColor;
		button.colors = cb;
	}

	public void OnOtherButtonClicked()
	{
		button.colors = defaultCB;
	}


}
