using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Events;

public class CalculateDistance : MonoBehaviour {

	public DroneManager droneManager;
	public UnityEvent unityEvent;

	/*void StartGame()
	{
		droneManager = GameObject.Find("DroneManager").GetComponent<DroneManager>();
	}*/

	//calculates the roundtrip distance from the warehouse to the destination and back
	public void Calculate()
	{
		int dummyNumber = droneManager.currentDrone.GetComponent<DroneData>().sO_Drone.droneNumber;
		NavMeshPath dummyPath = new NavMeshPath();
		NavMeshAgent dummyAgent = droneManager.droneDummiesAir[dummyNumber].GetComponent<NavMeshAgent>();

		dummyAgent.CalculatePath(droneManager.currentDestination.position, dummyPath);
		droneManager.currentDistance = (Vector3.Distance(droneManager.droneDummiesAir[dummyNumber].position, droneManager.droneDummiesGround[dummyNumber].position) + dummyAgent.remainingDistance) * 2;
		print(droneManager.currentDistance);
		unityEvent.Invoke();
	}
}
