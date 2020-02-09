using System;
using UnityEngine;


public class WeatherCompass : MonoBehaviour
{ 
    public static WeatherCompass instance;

    public GameObject pointer;

    private void Awake()
    { 
        if (WeatherCompass.instance == null)
        { 
            WeatherCompass.instance = this;
        }
        else if (WeatherCompass.instance != this)
        { 
            Destroy(this);
        }
    }

    public void UpdatePointer(Vector3 direction)
    { 
        float angle = Vector3.Angle(Vector3.right, direction);
        pointer.transform.rotation = Quaternion.Euler(0, 0, (angle - 90));
    }
}
