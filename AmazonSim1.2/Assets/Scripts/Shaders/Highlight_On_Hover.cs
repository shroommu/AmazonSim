using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Highlight_On_Hover : MonoBehaviour {

	public Shader standard;
	public Shader highlight;

	void OnMouseEnter()
	{
        GetComponent<Renderer>().material.shader = highlight;
	}

    void OnMouseExit()
	{
        GetComponent<Renderer>().material.shader = standard;
	}
}
