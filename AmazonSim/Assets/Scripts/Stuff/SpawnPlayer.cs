using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnPlayer : MonoBehaviour {

	public GameObject player;
	public GameObject startpoint;
	public GameObject currentCheckpoint;

	void Start()
	{
		if(currentCheckpoint != null)
		{
			player.transform.position = currentCheckpoint.transform.position;
		}

		else
		{
			player.transform.position = startpoint.transform.position;
		}
	}

}
