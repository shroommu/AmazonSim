using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Events;

public class CalculateDistance : MonoBehaviour {

	//calculates the roundtrip distance from the warehouse to the destination and back
	public void Calculate()
	{
		int dummyNumber = DroneManager.instance.currentDrone.GetComponent<DroneData>().sO_Drone.droneNumber - 1;
		Transform droneDummyAir = DroneManager.instance.droneDummiesAir[dummyNumber];
		Transform droneDummyGround = droneDummyAir.GetChild(0);
		//NavMeshPath dummyPath = new NavMeshPath();
		//NavMeshAgent dummyAgent = DroneManager.instance.droneDummiesAir[dummyNumber].GetComponent<NavMeshAgent>();

		//dummyAgent.CalculatePath(DroneManager.instance.currentDestination.position, dummyPath);
		//dummyAgent.path = dummyPath;

		DroneManager.instance.UpdateCurrentDistance((Vector3.Distance(droneDummyAir.position, droneDummyGround.position) * 2
			+ Vector3.Distance(droneDummyAir.position, DroneManager.instance.currentDestination.position)) * 2);

		//dummyAgent.path = null;

		DroneSelectPanelManager.instance.UpdateDistanceText();
		DroneSelectPanelManager.instance.UpdateFuelText();
	}
}
