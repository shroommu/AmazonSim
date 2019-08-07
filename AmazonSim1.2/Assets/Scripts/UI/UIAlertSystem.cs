using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UIAlertSystem : MonoBehaviour {

	public static UIAlertSystem instance = null;

	//public List<GameObject> alerts;
	public int alertListLimit;
	public GameObject contentParent;

	public GameObject alertPrefab;

	//create singleton
	public void Awake()
	{	
		if (instance == null)
		{
			instance = this;
		}
		else if (instance != this)
		{
			Destroy(instance);
		}
	}

	public void CreateAlertObject(string newText)
	{
		GameObject newAlert = Instantiate(alertPrefab);
		newAlert.GetComponent<Text>().text = newText;
		newAlert.transform.SetParent(contentParent.transform);
		newAlert.transform.localPosition = Vector3.zero;
		newAlert.transform.SetAsFirstSibling();
	}

	public void AddToAlertList()
	{
		



		/*if(alerts.Count >= alertListLimit)
		{
			alerts.Remove(alerts[alerts.Count]);
			for(int i = 0; i < alerts.Count - 1; i++)
			{
				alerts[alerts.Count - i] = alerts[alerts.Count - (i +1)];
			}
		}*/
	}

	public void DisplayAlerts()
	{

	}

}
