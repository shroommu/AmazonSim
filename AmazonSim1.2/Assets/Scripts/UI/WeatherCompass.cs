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
UnityEngine.Object.Destroy(this);
}
}

public void UpdatePointer(Vector3 rotation)
{ 
Vector3 euler = new Vector3(0f, 0f, -(rotation.y + 90f));
this.pointer.transform.rotation = Quaternion.Euler(euler);
}
}
