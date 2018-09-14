using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DisplayUIImageFill : MonoBehaviour {

	public Image image;

	public void Display(float _fillAmount)
	{
		image.fillAmount = _fillAmount;
	}

}