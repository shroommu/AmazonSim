using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SelectDestination : MonoBehaviour {
	public DroneManager droneManager;
	public DestinationButton destinationButton;
	public GameObject destination;

	public void StartGame()
	{
		droneManager = GameObject.Find ("DroneManager").GetComponent<DroneManager>();
		destinationButton = GetComponent<DestinationButton>();
	}

	public void Select()
	{
		droneManager.currentDestination = droneManager.destinations[destinationButton.sO_Destination.destNum];
		droneManager.currentPackage = destinationButton.sO_Package;
	}
}
