using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SelectDestination : MonoBehaviour {

	public DestinationButton destinationButton;
	public DestinationMapButton destinationMapButton;
	private bool isMapButton;

	public void Start()
	{
		//check to see what kind of destination button this is attached to
		if(GetComponent<DestinationButton>() != null)
		{
			destinationButton = GetComponent<DestinationButton>();
			isMapButton = false;
		}
		if(GetComponent<DestinationMapButton>() != null)
		{
			destinationMapButton = GetComponent<DestinationMapButton>();
			isMapButton = true;
		}
		
	}

	public void Select()
	{
		if(!isMapButton)
		{
			DroneManager.instance.currentDestination = DroneManager.instance.destinations[destinationButton.sO_Destination.destNum];
			DroneManager.instance.currentsO_Destination = destinationButton.sO_Destination;
			DroneManager.instance.currentPackage = destinationButton.sO_Destination.desiredPackage;
		}
		else
		{
			DroneManager.instance.currentDestination = DroneManager.instance.destinations[destinationMapButton.sO_Destination.destNum];
			DroneManager.instance.currentsO_Destination = destinationMapButton.sO_Destination;
			DroneManager.instance.currentPackage = destinationMapButton.sO_Package;
		}

	}
}
