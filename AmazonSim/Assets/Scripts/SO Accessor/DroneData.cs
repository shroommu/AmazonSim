using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class DroneData : MonoBehaviour {

	public DroneManager droneManager;
	public SO_Drone sO_Drone;
	public Transform droneMesh;
	
	[HideInInspector]
    public bool inMotion;
	[HideInInspector]
	public bool atDest = false;
	public bool hasPackage = false;

	public int destNum;
	public Transform destAir;
	public Transform destGround;

	public Transform warehouseAir;
	public Transform warehouseGround;

}