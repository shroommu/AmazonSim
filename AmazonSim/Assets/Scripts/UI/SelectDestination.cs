using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SelectDestination : MonoBehaviour {
	public DroneManager droneManager;
	public GameObject destination;

	public void StartGame()
	{
		droneManager = GameObject.Find ("DroneManager").GetComponent<DroneManager>();
	}

	public void Select(int destNum)
	{
		droneManager.currentDestination = droneManager.destinations[destNum];
		print("Selected " + droneManager.currentDestination);
	}
}
