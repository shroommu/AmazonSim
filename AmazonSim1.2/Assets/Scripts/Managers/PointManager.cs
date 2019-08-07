using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PointManager : MonoBehaviour {

	public static PointManager instance;

	public int currentPoints = 0;

	public List<GameObject> dronePrefabs;

	public Text pointsText;

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

	public void ChangePoints(int change)
	{
		currentPoints += change;
		Display();
		GameData.instance.IncreasePoints(change);
	}

	public void Display()
	{
		pointsText.text = currentPoints.ToString();
	}
}