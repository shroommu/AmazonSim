using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu (fileName = "New Drone", menuName = "Scriptable Objects/Drone") ]
public class SO_Drone : ScriptableObject {

	public float maxFuel;
	public float currentFuelLevel;

	public SO_Package sO_Package;



}
