using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DroneCamFollow : MonoBehaviour {

	public Camera mainCamera;
	public Transform objToFollow;

	public void SetDroneToFollow()
	{
		mainCamera.GetComponent<CameraFollow>().objToFollow = objToFollow;
		mainCamera.GetComponent<CameraFollow>().StartFollow();
	}

}
