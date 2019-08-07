using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CalculateFuelConsumption : MonoBehaviour {

	//private DroneManager droneManager;
	public double fuelConsumption;
	public GameObject fuelText;


	void Start()
	{
		//droneManager = GameObject.Find("DroneManager").GetComponent<DroneManager>();
	}

	public void Calculate()
	{
		fuelConsumption = DroneManager.instance.currentDistance * DroneManager.instance.currentPackage.pkgWeight;
		fuelText.GetComponent<DisplayUIText>().Display(fuelConsumption.ToString());
	}
		
	
}
