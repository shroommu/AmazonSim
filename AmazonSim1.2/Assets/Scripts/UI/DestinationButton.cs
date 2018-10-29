using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DestinationButton : MonoBehaviour {

	private DroneManager droneManager;

	public SO_Destination sO_Destination;
	public SO_Package sO_Package;
	public Text titleText;
	public Text distanceText;
	public Text fuelText;
	public Text pkgWgtText;


	public void StartGame()
	{
		droneManager = GameObject.Find("DroneManager").GetComponent<DroneManager>();
		NewDestination();
	}

	public void NewDestination()
	{
		RandomizeDestination();
		RandomizePackage();
		Display();
	}

	public void RandomizeDestination()
	{
		sO_Destination = droneManager.sO_Destinations[Random.Range(0, (droneManager.sO_Destinations.Count - 1))];
	}

	public void RandomizePackage()
	{
		sO_Package = droneManager.packages[Random.Range(0, (droneManager.packages.Count - 1))];
	}


	public void Display()
	{
		titleText.text = sO_Destination.destName;
		distanceText.text = ("Distance: " + droneManager.currentDistance.ToString());
		pkgWgtText.text = ("Package Weight: " + sO_Package.pkgWeight.ToString());
	}

}
