using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu (fileName = "New Drone", menuName = "Scriptable Objects/Drone") ]
public class SO_Drone : ScriptableObject {

	public float maxFuel = 100;
	public float currentFuelLevel = 100;
	public int droneNumber;
	public SO_Package sO_Package;

	public enum DroneType
	{
		BOXDRONE,
		PLANEDRONE,
		CURVEDRONE
	}
	public DroneType droneType;

}
