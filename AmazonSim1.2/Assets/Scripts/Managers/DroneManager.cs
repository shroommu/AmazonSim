using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Events;

public class DroneManager : MonoBehaviour {

	public static DroneManager instance;

	public GameObject currentDrone;
	public Transform currentDestination;
	public SO_Package currentPackage;
	public SO_Destination currentsO_Destination;
	public float currentDistance;

	public Stack<int> droneNumStack = new Stack<int>();

	public List<Transform> destinations;
	public List<GameObject> drones;
	public List<Transform> warehousePads;
	public List<Transform> droneDummiesAir;
	public List<Transform> droneDummiesGround;

	public int maxDrones = 20;

	public int droneCounter = 0;
	
	void Awake()
	{
		if(instance == null)
		{
			instance = this;
		}
		else if(instance != this)
		{
			Destroy(this);
		}
	}

	public void Start()
	{
		for (int i = maxDrones; i > 0; i--)
		{
			droneNumStack.Push(i);
		}
	}
	public void Dispatch()
	{
		currentDrone.GetComponent<DroneHorizMovement>().MoveNavMesh(currentDestination);
	}

	public void OnDroneCrash()
	{ 
		if (this.drones.Count == 0)
		{ 
			GameStateManager.instance.PostgameState();
		}
	}

	public void UpdateCurrentDistance(float newDistance)
	{
		currentDistance = newDistance;
	}

	public Stack<int> SortStack(Stack<int> input)
	{
		Stack<int> tmpStack = new Stack<int>();
		while (input.Count > 0)
		{
			// pop out the first element  
			int tmp = input.Pop();

			// while temporary stack is not empty and  
			// top of stack is greater than temp  
			while (tmpStack.Count > 0 && tmpStack.Peek() > tmp)
			{
				// pop from temporary stack and  
				// push it to the input stack  
				input.Push(tmpStack.Pop());
			}

			// push temp in tempory of stack  
			tmpStack.Push(tmp);
		}
		return tmpStack;
	}

}
