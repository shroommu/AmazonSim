using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class DroneManager : MonoBehaviour {

	public GameObject currentDrone;
	public Transform currentDestination;
	public SO_Package currentPackage;
	public float currentDistance;

	public List<SO_Destination> sO_Destinations;
	public List<Transform> destinations;
	public List<GameObject> drones;
	public List<SO_Package> packages;
	public List<Transform> warehousePads;
	public List<Transform> droneDummiesAir;
	public List<Transform> droneDummiesGround;
	

	public void Dispatch()
	{
		currentDrone.GetComponent<DroneHorizMovement>().MoveNavMesh(currentDestination);
	}

}
