using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class DroneFuel : MonoBehaviour {

	private DisplayUIImageFill displayUIImageFill;
	private DroneData droneData;
	private NavMeshAgent agent;


	private bool useFuelRunning = false;

	void Start()
	{
		displayUIImageFill = GetComponent<DisplayUIImageFill>();
		droneData = GetComponent<DroneData>();
		agent = GetComponent<NavMeshAgent>();

		displayUIImageFill.Display(droneData.sO_Drone.currentFuelLevel/100);
	}



	public IEnumerator UseFuel()
	{
		if(!useFuelRunning)
		{
			useFuelRunning = true;

			while(droneData.inMotion && !droneData.atDest)
			{
				droneData.sO_Drone.currentFuelLevel--;

				if (droneData.sO_Drone.currentFuelLevel <= 0)
				{
					droneData.sO_Drone.currentFuelLevel = 0;
					agent.isStopped = true;
					agent.speed = 0;
					droneData.inMotion = false;
				}

				displayUIImageFill.Display(droneData.sO_Drone.currentFuelLevel/100);
				yield return new WaitForSeconds(1);
			}

			useFuelRunning = false;
		}
	}
	public IEnumerator Refuel()
	{
		while (droneData.sO_Drone.currentFuelLevel < 100)
		{
			droneData.sO_Drone.currentFuelLevel++;
			displayUIImageFill.Display(droneData.sO_Drone.currentFuelLevel/100);
			yield return new WaitForSeconds(1);
		}
	}
}
