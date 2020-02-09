using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DestinationButton : MonoBehaviour {
	
	public SO_Destination sO_Destination;
	public SO_Package sO_Package;
	public GameObject mapButton;
	public DestinationMapButton destMapButton;
	public Text titleText;
	public Text distanceText;
	public Text pkgWgtText;
	public Text timerText;

	public int existTimeMin;
	public int existTimeMax;
	public int existTime;
	public int buttonNum;

	public void Display()
	{
		titleText.text = sO_Destination.destName;
		distanceText.text = ("Distance: " + DroneManager.instance.currentDistance.ToString());
		pkgWgtText.text = ("Package Weight: " + sO_Package.pkgWeight.ToString());
	}

	public void StartDestroyTimer()
	{
		StartCoroutine(Destroy());
	}

	IEnumerator Destroy()
	{
		existTime = Random.Range(existTimeMin, existTimeMax);

		while(existTime > 0)
		{
			DisplayTimer();
			existTime--;
			yield return new WaitForSeconds(1);
		}

		if(!sO_Package.isEnRoute)
		{
			DestinationManager.instance.ReusePackage(sO_Package);
			DestinationManager.instance.ReuseDestination(sO_Destination);
		}

		PointManager.instance.ChangePoints(-sO_Package.pkgPoints/2);
		mapButton.SetActive(false);
		Destroy(gameObject);

	}

	public void DisplayTimer()
	{
		timerText.text = existTime.ToString();
		destMapButton.Display(existTime);
	}

}
