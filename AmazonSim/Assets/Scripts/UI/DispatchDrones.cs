using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DispatchDrones : MonoBehaviour {

	public DroneManager droneManager;

	public void StartGame()
	{
		droneManager = GameObject.Find("DroneManager").GetComponent<DroneManager>();
	}

	public void Dispatch()
	{	
		DroneData droneData = droneManager.currentDrone.GetComponent<DroneData>();
		droneData.destAir = droneManager.currentDestination.GetComponent<DestData>().dropspotAir;
		droneData.destNum = droneManager.currentDestination.GetComponent<DestData>().sO_Destination.destNum;
		droneData.destGround = droneManager.currentDestination.GetComponent<DestData>().dropspotGround;
		droneData.droneMesh.GetComponent<DroneVertMovement>().Ascend();
		droneData.hasPackage = true;
	}

}
