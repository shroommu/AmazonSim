using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DroneStatusPopupManager : MonoBehaviour {

	public static DroneStatusPopupManager instance;

	public GameObject statusPopup;
	public RawImage ri;
	public DisplayUIImageFill displayUIImageFill;
	public Text droneNumber;
	private bool canUpdate;
	private IEnumerator updateFuel;

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

	public void SetActive(RenderTexture tex, SO_Drone sO_Drone)
    {
		droneNumber.text = "Drone " + sO_Drone.droneNumber;
		statusPopup.SetActive(true);
		ri.texture = tex;
		canUpdate = true;
		updateFuel = UpdateFuel(sO_Drone);
		StartCoroutine(updateFuel);
    }

	public void SetInactive()
	{
		canUpdate = false;
		StopCoroutine(updateFuel);
		statusPopup.SetActive(false);
	}

	IEnumerator UpdateFuel(SO_Drone sO_Drone)
	{
		while (canUpdate)
		{
			print(sO_Drone.currentFuelLevel);
			displayUIImageFill.Display(sO_Drone.currentFuelLevel/100);
			yield return new WaitForSeconds(1);
		}
	}



}
