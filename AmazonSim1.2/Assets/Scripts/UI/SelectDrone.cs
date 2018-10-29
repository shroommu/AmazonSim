using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SelectDrone : MonoBehaviour {

	public DroneManager droneManager;

	public void StartGame()
	{
		droneManager = GameObject.Find ("DroneManager").GetComponent<DroneManager>();
	}

	public void Select(int droneNumber)
	{
		droneManager.currentDrone = droneManager.drones[droneNumber];
		print("Selected " + droneManager.currentDrone);
	}
}
