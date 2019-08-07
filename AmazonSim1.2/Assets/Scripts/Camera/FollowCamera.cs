using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FollowCamera : MonoBehaviour {

	public Transform target;
	private bool canFollow;

	public void StartGame()
	{
		canFollow = true;
		StartCoroutine(Follow());
	}

	IEnumerator Follow()
	{
		while(canFollow)
		{
			transform.position = target.position;
			yield return null;
		}

	}

}
