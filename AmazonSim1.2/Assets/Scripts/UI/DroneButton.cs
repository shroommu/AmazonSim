using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DroneButton : MonoBehaviour {

	//public DroneManager droneManager;
	public SO_Drone sO_Drone;
	public int buttonNumber;
	public Text droneName;
	public Text droneFuelLevel;

	public void Display()
	{
		droneName.text = ("Drone " + sO_Drone.droneNumber.ToString());
		droneFuelLevel.text = ("Fuel Level: " + sO_Drone.currentFuelLevel.ToString());
	}

}
