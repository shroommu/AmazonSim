using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Stats : MonoBehaviour
{ 
    public List<string> lines;

    private Text text;

    public void OnGameOver()
    { 
        text = GetComponent<Text>();

        lines.Add(string.Format("{0}\n", GameData.instance.numberOfPoints.ToString()));
        lines.Add(string.Format("{0}\n", GameData.instance.numberOfDrones.ToString()));
        lines.Add(string.Format("{0}\n", GameData.instance.numberOfDeliveries.ToString()));
        lines.Add(string.Format("{0} s\n", GameData.instance.totalTimeInGame.ToString()));
        lines.Add(string.Format("{0:0.00} lbs\n", GameData.instance.avgWeightPackages));
        lines.Add(string.Format("{0:0.00} s\n", GameData.instance.avgDeliveryTime));
        lines.Add(string.Format("{0:0.00}\n", GameData.instance.avgDeliveriesPerMin));
        lines.Add(string.Format("{0:0.00}\n", GameData.instance.avgFuelConsumedPerDelivery));
        
        foreach (string current in lines)
        { 
            Text expr_163 = text;
            expr_163.text += current;
        }
    }
}
