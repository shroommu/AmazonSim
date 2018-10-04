using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DisplayUIImage : MonoBehaviour {

	public Image image;

	//public Sprite sprite;

	public void Display(Sprite _sprite)
	{
		image.sprite = _sprite;
	}

}