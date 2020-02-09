using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SelectDrone : MonoBehaviour {

	public void Select()
	{ 
		foreach (GameObject current in DroneManager.instance.drones)
		{ 
			if (current.GetComponent<DroneData>().sO_Drone == GetComponent<DroneButton>().sO_Drone)
			{ 
			DroneManager.instance.currentDrone = current;
			}
		}
	}
}