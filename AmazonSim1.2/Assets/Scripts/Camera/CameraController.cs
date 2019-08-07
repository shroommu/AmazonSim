using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraController : MonoBehaviour {

	public float panSpeed = 20;
	public float panBorderPad = 10;

	public float scrollSpeed = 50;

	public float rotateSpeed = 20;
	
	public Vector2 panLimitMin;
	public Vector2 panLimitMax;
	public Vector2 zoomLimit;

	public bool canMoveCamera = false;
	
	public void StartGame()
	{
		StartCameraMovement();
	}

	public void StartCameraMovement()
	{
		canMoveCamera = true;
		StartCoroutine(MoveCamera());
	}

	public void StopCameraMovement()
	{
		canMoveCamera = false;
	}


	IEnumerator MoveCamera()
	{
		while(canMoveCamera)
		{
			CameraFollow cameraFollow = GetComponent<CameraFollow>();

			Vector3 pos = transform.position;

			if (Input.GetKey("w") || Input.mousePosition.y >= Screen.height - panBorderPad)
				{
					pos.z += panSpeed *Time.deltaTime;
					cameraFollow.canFollow = false;
				}

			if (Input.GetKey("s") || Input.mousePosition.y <= panBorderPad)
				{
					pos.z -= panSpeed *Time.deltaTime;
					cameraFollow.canFollow = false;
				}

			if (Input.GetKey("d") || Input.mousePosition.x >= Screen.width - panBorderPad)
				{
					pos.x += panSpeed *Time.deltaTime;
					cameraFollow.canFollow = false;
				}

			if (Input.GetKey("a") || Input.mousePosition.x <= panBorderPad)
				{
					pos.x -= panSpeed *Time.deltaTime;
					cameraFollow.canFollow = false;
				}	

			float scrollWheel = Input.GetAxis("Mouse ScrollWheel");
			pos.y -= scrollWheel * scrollSpeed * 100 * Time.deltaTime;
			
			pos.x = Mathf.Clamp(pos.x, panLimitMin.x, panLimitMax.x);
			pos.y = Mathf.Clamp(pos.y, zoomLimit.x, zoomLimit.y);
			pos.z = Mathf.Clamp(pos.z, panLimitMin.y, panLimitMax.y);

			transform.position = pos;

			yield return null;
		}
	}
}
