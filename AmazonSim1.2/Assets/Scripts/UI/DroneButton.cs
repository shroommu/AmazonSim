using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DroneButton : MonoBehaviour {

	private DroneManager droneManager;

	public int buttonNumber;
	public Text droneName;
	public Text droneFuelLevel;

	public void StartGame()
	{
		droneManager = GameObject.Find("DroneManager").GetComponent<DroneManager>();
	}

	public void Display()
	{
		droneName.text = ("Drone" + droneManager.drones[buttonNumber].GetComponent<DroneData>().sO_Drone.droneNumber.ToString());
		droneFuelLevel.text = ("Fuel Level: " + droneManager.drones[buttonNumber].GetComponent<DroneData>().sO_Drone.currentFuelLevel.ToString());
	}

}
