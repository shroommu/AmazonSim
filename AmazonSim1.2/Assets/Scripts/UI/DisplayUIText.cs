using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DisplayUIText : MonoBehaviour {

	public Text text;

	public void Display(string _text)
	{
		text.text = _text;
	}

}