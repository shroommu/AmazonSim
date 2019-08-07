using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WindManager : MonoBehaviour {

	public static WindManager instance;

	public Vector3 windDirection = new Vector3(0, 0, 1);
	public float windSpeed = 1;
	public Vector2 windSpeedRange = new Vector2(1.0f, 5.0f);
	public Vector2 windChangeTimeRange = new Vector2(15, 30);
	public float windChangeSpeed = 1;

	public bool canGenerate = true;

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

	public void StartGame()
	{
		StartCoroutine(GenerateWind());
	}

	IEnumerator GenerateWind()
	{
		while(canGenerate)
		{
			StartCoroutine(ChangeWindDirection());
			yield return new WaitForSeconds(Random.Range(windChangeTimeRange.x, windChangeTimeRange.y));
		}
	}

	IEnumerator ChangeWindDirection()
	{
		Vector3 currentDirection = windDirection;
		print(currentDirection);
		Vector3 newDirection = CalcNewDirection();
		print(newDirection);
		float currentSpeed = windSpeed;
		print(currentSpeed);
		float newSpeed = CalcNewWindSpeed();
		print(newSpeed);
		float interp = 0;

		while(interp < 1)
		{
			interp += windChangeSpeed * Time.deltaTime;
			windDirection = Vector3.Lerp(currentDirection, newDirection, interp);
			windSpeed = Mathf.Lerp(currentSpeed, newSpeed, interp);
			windDirection *= windSpeed;
			
			yield return null;
		}
	}

	public Vector3 CalcNewDirection()
	{
		Vector3 newDirection = new Vector3(Random.Range(0.0f, 1.0f), 0, Random.Range(0.0f, 1.0f));
		return newDirection;
	}

	public float CalcNewWindSpeed()
	{
		float newSpeed = Random.Range(windSpeedRange.x, windSpeedRange.y);
		return newSpeed;
	}
}