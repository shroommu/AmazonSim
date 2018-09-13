using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu (fileName = "New Package", menuName = "Scriptable Objects/Package") ]

public class SO_Package : ScriptableObject {

	public string pkgName;
	public string pkgWeight;

	public SO_Destination pkgDestination;

}
