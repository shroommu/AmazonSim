using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu (fileName = "New Destination", menuName = "Scriptable Objects/Destination") ]

public class SO_Destination : ScriptableObject {

	public string destName;
	public string pkgName;

	public float pkgWgtMin = 0.1f;
	public float pkgWgtMax = 5;
	public float pkgWeight;


	public void RandomizePackageWeight()
	{
		pkgWeight = Random.Range(pkgWgtMin, pkgWgtMax);
	}

}
