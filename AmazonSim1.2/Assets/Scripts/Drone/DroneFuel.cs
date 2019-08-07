using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Events;

public class DroneFuel : MonoBehaviour {

	private DisplayUIImageFill displayUIImageFill;
	private DroneData droneData;
	private DroneCrash droneCrash;
	private NavMeshAgent navMeshAgent;

	public int weightMultiplier;
	public int refuelAmount;

	public float fuelOverhead = 0.1f;
	private bool fuelLow = false;

	public UnityEvent fuelEmptyEvent;


	private bool useFuelRunning = false;

	void Start()
	{
		displayUIImageFill = GetComponent<DisplayUIImageFill>();
		droneData = GetComponent<DroneData>();
		navMeshAgent = GetComponent<NavMeshAgent>();
		droneCrash = transform.GetChild(1).GetComponent<DroneCrash>();

		displayUIImageFill.Display((float)droneData.sO_Drone.currentFuelLevel/100);
	}

	public IEnumerator UseFuel(float pgkWgt)
	{

		print("Start of UseFuel");

		if(!useFuelRunning)
		{
			useFuelRunning = true;

			while(!droneData.atDest)
			{
				float windMultiplier = 1;
				print("NavMeshAgent magnitude: " + navMeshAgent.velocity.magnitude);

				if(navMeshAgent.velocity.magnitude != 0)
				{
					windMultiplier = (navMeshAgent.velocity + WindManager.instance.windDirection).magnitude / navMeshAgent.velocity.magnitude;
				}
				else
				{
					windMultiplier = 1;
				}

				droneData.sO_Drone.currentFuelLevel -= windMultiplier * (fuelOverhead + (pgkWgt/weightMultiplier));

				if (droneData.sO_Drone.currentFuelLevel <= 0)
				{
					droneData.sO_Drone.currentFuelLevel = 0;
					droneCrash.StartCrash();		
					GetComponent<DroneAlertSystem>().OnFuelEmpty();
				}

				if(droneData.sO_Drone.currentFuelLevel < 20 && !fuelLow)
				{
					GetComponent<DroneAlertSystem>().OnFuelLow();
					fuelLow = true;
				}

				displayUIImageFill.Display((float)droneData.sO_Drone.currentFuelLevel/100);

				yield return new WaitForSeconds(.1f);
			}

			useFuelRunning = false;
			print("End of UseFuel");
		}
	}
	public IEnumerator Refuel()
	{
		while (droneData.sO_Drone.currentFuelLevel < 100 && !droneData.isDispatched)
		{
			droneData.sO_Drone.currentFuelLevel += refuelAmount;
			displayUIImageFill.Display((float)droneData.sO_Drone.currentFuelLevel/100);

			if(fuelLow && droneData.sO_Drone.currentFuelLevel > 20)
			{
				fuelLow = false;
			}

			yield return new WaitForSeconds(1);
		}

		if(droneData.sO_Drone.currentFuelLevel > 100)
		{
			droneData.sO_Drone.currentFuelLevel = 100;
		}
		
		if(droneData.sO_Drone.currentFuelLevel == 100)
		{
			GetComponent<DroneAlertSystem>().OnFuelFull();
		}
	}
}
