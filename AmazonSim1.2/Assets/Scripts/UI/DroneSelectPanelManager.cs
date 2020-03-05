using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DroneSelectPanelManager : MonoBehaviour {

    public static DroneSelectPanelManager instance;
	public Text distanceText;
	public Text fuelText;

	void Awake()
	{
		if (instance == null)
		{
			instance = this;
		}
		else if (instance != this)
		{
			Destroy(this);
		}
	}

	public void UpdateDistanceText()
	{
		distanceText.text = DroneManager.instance.currentDistance.ToString() + "m";
	}

	public void UpdateFuelText()
	{
		fuelText.text = string.Format("{0:0.00}%", (DroneManager.instance.currentDistance * DroneManager.instance.currentPackage.pkgWeight));
	}

}
