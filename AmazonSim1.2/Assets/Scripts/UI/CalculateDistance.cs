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
		NavMeshPath dummyPath = new NavMeshPath();
		NavMeshAgent dummyAgent = DroneManager.instance.droneDummiesAir[dummyNumber].GetComponent<NavMeshAgent>();

		print(dummyAgent.transform.position);
		print(DroneManager.instance.currentDestination.position);

		dummyAgent.CalculatePath(DroneManager.instance.currentDestination.position, dummyPath);
		dummyAgent.path = dummyPath;

		print("DummyAgent Remaining Distance = " + dummyAgent.remainingDistance);

		DroneManager.instance.UpdateCurrentDistance((Vector3.Distance(DroneManager.instance.droneDummiesAir[dummyNumber].position,
			DroneManager.instance.droneDummiesGround[dummyNumber].position) * 2 + dummyAgent.remainingDistance) * 2);

		//dummyAgent.path = null;

		DroneSelectPanelManager.instance.UpdateDistanceText();
		DroneSelectPanelManager.instance.UpdateFuelText();
	}
}
