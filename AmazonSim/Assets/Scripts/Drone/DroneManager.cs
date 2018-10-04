using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DroneManager : MonoBehaviour {

	public GameObject currentDrone;
	public Transform currentDestination;
	public List<Transform> destinations;
	public List<GameObject> drones;

	public List<SO_Package> packages;

	public List<Transform> warehousePads;

	public void Dispatch()
	{
		currentDrone.GetComponent<DroneData>().MoveNavMesh(currentDestination);
	}

}
