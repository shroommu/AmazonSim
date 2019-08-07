using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class DropOffPackage : MonoBehaviour {

	//public DestinationManager destinationManager;
	//public PointManager pointManager;
	//public GameData gameData;
	
	private DroneAlertSystem droneAlertSystem;

	public void Start()
	{
		droneAlertSystem = GetComponent<DroneAlertSystem>();
	}

	public void OnDropoff()
	{
		DroneData droneData = GetComponent<DroneData>();

		if(droneData.sO_Package != null)
		{
			//pointManager = GameObject.Find("PointManager").GetComponent<PointManager>();
			//destinationManager = GameObject.Find("DestinationManager").GetComponent<DestinationManager>();
			PointManager.instance.ChangePoints(droneData.sO_Package.pkgPoints);

			GameData.instance.IncreaseDeliveries(1);
			GameData.instance.IncreaseTotalWeight(droneData.sO_Package.pkgWeight);

			droneData.sO_Package.isEnRoute = false;
			DestinationManager.instance.ReusePackage(droneData.sO_Package);
			DestinationManager.instance.ReuseDestination(droneData.sO_Destination);

			droneAlertSystem.OnDelivery();

			droneData.sO_Destination.desiredPackage = null;
			droneData.sO_Package = null;
		}
	}
}