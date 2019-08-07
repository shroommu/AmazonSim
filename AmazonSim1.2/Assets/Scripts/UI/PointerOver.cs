using System.Collections;
using System.Collections.Generic;
using UnityEngine.Events;
using UnityEngine;

public class PointerOver : MonoBehaviour {

	public UnityEvent mouseOnEvent;
	public UnityEvent mouseOffEvent;

	public void OnPointerEnter()
	{
        print("mousing over");
        mouseOnEvent.Invoke();
	}

    public void OnPointerExit()
    {
        print("not mousing over");
        mouseOffEvent.Invoke();
    }

}
