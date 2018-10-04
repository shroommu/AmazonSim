using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DispatchDrones : MonoBehaviour {

	public DroneManager droneManager;

	public void StartGame()
	{
		droneManager = GameObject.Find ("DroneManager").GetComponent<DroneManager>();
	}

	public void Dispatch()
	{
		droneManager.currentDrone.GetComponent<DroneData>().MoveNavMesh(droneManager.currentDestination);
	}

}
