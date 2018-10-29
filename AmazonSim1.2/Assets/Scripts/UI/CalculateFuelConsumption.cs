using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CalculateFuelConsumption : MonoBehaviour {

	private DroneManager droneManager;
	public float fuelConsumption;

	void Start()
	{
		droneManager = GameObject.Find("DroneManager").GetComponent<DroneManager>();
	}

	public void Calculate()
	{
		fuelConsumption = droneManager.currentDistance * droneManager.currentPackage.pkgWeight;
	}
		
	
}
