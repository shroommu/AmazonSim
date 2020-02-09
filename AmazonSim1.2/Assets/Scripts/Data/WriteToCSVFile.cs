using System;
using System.Collections.Generic;
using System.IO;
using UnityEngine;


public class WriteToCSVFile : MonoBehaviour
{ 
public static void WriteString(List<string> dataList)
{ 
string text = Environment.GetFolderPath(Environment.SpecialFolder.Personal) + "\\AmazonDroneSim\\";
string path = text + "Log_" + DateTime.Now.ToString("MMddyyyy_HHmmss") + ".csv";
Directory.CreateDirectory(text);
StreamWriter streamWriter = new StreamWriter(path, true);
streamWriter.WriteLine("Total Points Earned,Size of Fleet,Drones Destroyed,Total Packages Delivered,Simulation Run Time,Average Package Weight,Average Time Per Delivery,Average Deliveries Per Minute,Average Fuel Consumed Per Delivery");
string text2 = string.Empty;
for (int i = 0; i < dataList.Count; i++)
{ 
text2 += dataList[i];
if (i != dataList.Count - 1)
{ 
text2 += ",";
}
}
streamWriter.WriteLine(text2);
streamWriter.Close();
Debug.Log("wrote file");
}
}
