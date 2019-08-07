using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SelectDrone : MonoBehaviour {

	//public DroneManager droneManager;



	public void Select()
	{
		//droneManager = GetComponent<DroneButton>().droneManager;
		DroneManager.instance.currentDrone = DroneManager.instance.drones[GetComponent<DroneButton>().sO_Drone.droneNumber - 1];
	}
}
