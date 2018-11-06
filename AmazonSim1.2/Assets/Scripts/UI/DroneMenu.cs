using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DroneMenu : MonoBehaviour {

	public List<DroneButton> droneButtons;
	public List<DestinationButton> destinationButtons;

	void Start()
	{

	}

	public void OnOpenMenu()
	{
		foreach (DroneButton button in droneButtons)
		{
			button.Display();
		}
	}

	public void OnCloseMenu()
	{

	}


}
