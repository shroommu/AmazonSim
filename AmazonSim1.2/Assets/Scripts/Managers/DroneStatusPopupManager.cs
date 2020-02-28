using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DroneStatusPopupManager : MonoBehaviour {

	//TODO: Make this class dynamic (rendertexture changes based on which button is being hovered over)

	public static DroneStatusPopupManager instance;

	public RawImage test;

	// Use this for initialization
	void Awake()
	{
		if (instance == null)
		{
			instance = this;
		}
		else if (instance != this)
		{
			Destroy(this);
		}
	}

	public void SetImage(Texture tex)
    {
		test.texture = tex;
    }



}
