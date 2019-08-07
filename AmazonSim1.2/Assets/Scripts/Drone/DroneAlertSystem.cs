using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DroneAlertSystem : MonoBehaviour {

	private SO_Drone sO_Drone;

	void Start()
	{
		sO_Drone = GetComponent<DroneData>().sO_Drone;
	}

	public void OnLeftWarehouse()
	{
		UIAlertSystem.instance.CreateAlertObject("Drone " + sO_Drone.droneNumber + " has been dispatched");
	}

	public void OnDelivery()
	{
		UIAlertSystem.instance.CreateAlertObject("Drone " + sO_Drone.droneNumber + " has delivered its package");
	}

	public void OnReturnedWareHouse()
	{
		UIAlertSystem.instance.CreateAlertObject("Drone " + sO_Drone.droneNumber + " has returned and is refueling");
	}

	public void OnFuelLow()
	{
		UIAlertSystem.instance.CreateAlertObject("Drone " + sO_Drone.droneNumber + " is low on fuel");
	}

	public void OnFuelEmpty()
	{
		UIAlertSystem.instance.CreateAlertObject("Drone " + sO_Drone.droneNumber + " has run out of fuel");
	}

	public void OnFuelFull()
	{
		UIAlertSystem.instance.CreateAlertObject("Drone " + sO_Drone.droneNumber + " has been refueled");
	}


	public void OnMechFailure()
	{
		UIAlertSystem.instance.CreateAlertObject("Drone " + sO_Drone.droneNumber + " has experienced mechanical failure");
	}

	public void OnDroneCrash()
	{
		UIAlertSystem.instance.CreateAlertObject("Drone " + sO_Drone.droneNumber + " has crashed");
	}

}