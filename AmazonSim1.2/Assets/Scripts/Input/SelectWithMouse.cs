using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class SelectWithMouse : MonoBehaviour {

	public UnityEvent response;

	void OnMouseDown()
	{
		response.Invoke();
	}

}
