using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu (fileName = "New Package", menuName = "Scriptable Objects/Package") ]

public class SO_Package : ScriptableObject {

	public int pkgNum;
	public float pkgWeight;

	public int destNum;

	public float pkgWgtMin = 0.1f;
	public float pkgWgtMax = 5;

	public void RandomizePackageWeight()
	{
		pkgWeight = Random.Range(pkgWgtMin, pkgWgtMax);
	}

}
