using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DroneStatusButtonManager : MonoBehaviour {

	public static DroneStatusButtonManager instance;
	public GameObject statusButtonPrefab;

	public List<GameObject> droneStatusButtons;

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

	public GameObject CreateButton()
	{
		GameObject newButton = Instantiate(statusButtonPrefab);
		newButton.transform.SetParent(transform);
		newButton.transform.localScale = new Vector3(1, 1, 1);
		droneStatusButtons.Add(newButton);
		return newButton;
	}

	public void DeleteButton(GameObject button)
	{
		Destroy(button);
	}
}