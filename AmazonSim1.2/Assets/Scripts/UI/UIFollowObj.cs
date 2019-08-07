using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIFollowObj : MonoBehaviour {

	public Transform target;
	public bool canFollow;

	public void StartFollow()
	{
		canFollow = true;
		StartCoroutine(Follow());
	}

	IEnumerator Follow()
	{
		while(canFollow && target)
		{
			Vector3 screenPos = Camera.main.WorldToScreenPoint(target.position);
     		transform.position = screenPos;
			yield return null;
		}
	}
}
