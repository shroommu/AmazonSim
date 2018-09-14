using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class DroneData : MonoBehaviour {

	public SO_Drone sO_Drone;
	private NavMeshAgent agent; 
	//public Transform dest;

	void Start()
	{
		agent = GetComponent<NavMeshAgent>();
	}

	public void MoveNavMesh(int droneNum, Transform dest)
	{
		if (droneNum == sO_Drone.droneNumber)
		{
			agent.destination = dest.position;
		}
		
	}

}
