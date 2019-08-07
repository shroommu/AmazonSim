using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class DroneHorizMovement : MonoBehaviour {

	private NavMeshAgent agent;
	private DroneData droneData;
	public DroneVertMovement droneVertMovement;

	public float agentSpeed = 7f;

	private bool checkForPathRunning = false;

	void Start()
	{
		droneData = GetComponent<DroneData>();
		agent = GetComponent<NavMeshAgent>();
	}

	public void MoveNavMesh(Transform dest)
	{
		if(droneData.sO_Drone.currentFuelLevel > 0)
		{
			StartDrone();
			NavMeshPath path = new NavMeshPath();
			agent.CalculatePath(dest.position, path);

			agent.path = path;

			StartCoroutine(CheckForPath(false));
		}
	}

	IEnumerator CheckForPath(bool destIsWarehouse)
	{
		if(!checkForPathRunning)
		{	
			checkForPathRunning = true;
			
			while(agent.remainingDistance > 0.3)
			{
				yield return null;
			}

			StopDrone();

			if(droneData.hasPackage)
			{
				droneVertMovement.Descend();
			}
			else
			{
				droneData.destGround = DroneManager.instance.warehousePads[droneData.sO_Drone.droneNumber - 1].GetComponent<DestData>().dropspotGround;
				droneVertMovement.Descend();
			}

			checkForPathRunning = false;
		}
	}

	public void ReturnToWarehouse()
	{
		StartDrone();

		NavMeshPath path = new NavMeshPath();
		agent.CalculatePath(DroneManager.instance.warehousePads[droneData.sO_Drone.droneNumber - 1].GetComponent<DestData>().dropspotAir.position, path);

		agent.path = path;
		StartCoroutine(CheckForPath(true));
	}

	public void StopDrone()
	{
		if(droneData.isDispatched)
		{
			agent.isStopped = true;
		}
	}

	public void StartDrone()
	{
		if(droneData.isDispatched)
		{
			agent.isStopped = false;
		}
	}

}
