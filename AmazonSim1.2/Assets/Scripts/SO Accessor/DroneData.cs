using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class DroneData : MonoBehaviour {

	public DroneManager droneManager;
	public SO_Drone sO_Drone;
	public SO_Package sO_Package;
	public SO_Destination sO_Destination;
	public Transform droneMesh;
	
    public bool inMotion;
	public bool atDest = false;
	public bool hasPackage = false;

	public int destNum;
	public Transform destAir;
	public Transform destGround;

}