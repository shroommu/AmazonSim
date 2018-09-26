﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DestData : MonoBehaviour {

    public SO_Destination sO_Destination;
    public Transform warehouse;
    public Transform dropSpot;
    public float distance;

    void Start()
    {
        CalculateDistance();
    }

    public void CalculateDistance()
    {
        distance = Vector3.Distance(warehouse.position, dropSpot.transform.position);
        sO_Destination.distance = distance;
    }

}
