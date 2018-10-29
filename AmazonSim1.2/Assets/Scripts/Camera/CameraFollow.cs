using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraFollow : MonoBehaviour {

	public Transform objToFollow;
	public bool canFollow = false;
	public float xBuffer;
	public float zBuffer;

	void Start()
	{
		//zBuffer = Screen.height/2;
		//print(zBuffer);
	}

	public void StartFollow()
	{
		canFollow = true;
		StartCoroutine(Follow());
	}

	IEnumerator Follow()
	{
		while(canFollow)
		{	
			Vector3 pos = transform.position;

			pos.x = objToFollow.position.x - xBuffer;
			pos.z = objToFollow.position.z - zBuffer;

			transform.position = pos;

			//transform.LookAt(objToFollow);

			yield return null;
		}

	}

}
