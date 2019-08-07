using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu (fileName = "New Package", menuName = "Scriptable Objects/Package") ]

public class SO_Package : ScriptableObject {

	public int pkgNum;
	public float pkgWeight;

	public int pkgPoints;
	public bool isEnRoute = false;
}
