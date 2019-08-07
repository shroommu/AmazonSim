using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameData : MonoBehaviour {

	public static GameData instance;

	public int numberOfPoints;
	public int numberOfDrones = 1;
	public int dronesDestroyed = 0;
	public int numberOfDeliveries;
	public float totalWeight;
	public float totalDeliveryTime;
	public float totalTimeInGame;
	public float avgWeightPackages;
	public float avgDeliveryTime;
	public float avgDeliveriesPerMin;
	public float avgFuelConsumedPerDelivery;

	public List<string> dataList;

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

	public void IncreasePoints(int newPoints)
	{
		numberOfPoints += newPoints;
	}

	public void IncreaseDrones(int newDrones)
	{
		numberOfDrones += newDrones;
	}

	public void IncreaseDestroyedDrones(int newDrones)
	{
		dronesDestroyed += newDrones;
	}

	public void IncreaseDeliveries(int newDelivery)
	{
		numberOfDeliveries += newDelivery;
	}

	public void IncreaseTotalWeight(float newWeight)
	{
		totalWeight += newWeight;
	}

	public void IncreaseDeliveryTime(float newDeliveryTime)
	{
		totalDeliveryTime += newDeliveryTime;
	}

	public void StartGameTimer()
	{
		StartCoroutine(GameTimer());
	}

	IEnumerator GameTimer()
	{
		while(true)
		{
			totalTimeInGame++;
			yield return new WaitForSeconds(1);
		}
	}

	public void CalculateAverages()
	{
		avgWeightPackages = totalWeight/numberOfDeliveries;
		avgDeliveryTime = totalDeliveryTime/numberOfDeliveries;
		avgDeliveriesPerMin = numberOfDeliveries/(totalTimeInGame/60);
		avgFuelConsumedPerDelivery = (avgWeightPackages * avgDeliveryTime) / numberOfDeliveries;
	}

	public void WrapData()
	{
		dataList.Add("Total Points Earned: " + numberOfPoints.ToString());
		dataList.Add("Size of Fleet: " + numberOfDrones.ToString());
		dataList.Add("Total Packages Delivered: " + numberOfDeliveries.ToString());
		dataList.Add("Simulation Run Time: " + totalTimeInGame.ToString());
		dataList.Add("Average Package Weight: " + avgWeightPackages.ToString());
		dataList.Add("Average Time Per Delivery: " + avgDeliveryTime.ToString());
		dataList.Add("Average Deliveries Per Minute: " + avgDeliveriesPerMin.ToString());
		dataList.Add("Average Fuel Consumed Per Delivery: " + avgFuelConsumedPerDelivery.ToString());

		WriteToTextFile.WriteString(dataList);
	}
}