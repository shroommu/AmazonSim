using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetCheckpoint : MonoBehaviour {

	public GameObject player;
	private SpawnPlayer spawnPlayer;

	void Start()
	{
		spawnPlayer = player.GetComponent<SpawnPlayer>();
	}


	void OnTriggerEnter()
	{
		spawnPlayer.currentCheckpoint = gameObject;
	}

}
