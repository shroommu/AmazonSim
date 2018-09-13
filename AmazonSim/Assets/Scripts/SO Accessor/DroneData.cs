using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class DroneData : MonoBehaviour {

	public SO_Drone sO_Drone;
	private NavMeshAgent agent; 

	void Start()
	{
		agent = GetComponent<NavMeshAgent>();
	}

	public void MoveNavMesh()
	{
		agent.destination = sO_Drone.sO_Package.pkgDestination.destTransform.position;
	}

}
