using System.Collections;
using System.Collections.Generic;
using UnityEngine.Events;
using UnityEngine;

public class MouseOver : MonoBehaviour {

	public UnityEvent mouseOnEvent;
	public UnityEvent mouseOffEvent;

	public void OnMouseOver()
	{
        mouseOnEvent.Invoke();
	}

    public void OnMouseExit()
    {
        mouseOffEvent.Invoke();
    }

}
