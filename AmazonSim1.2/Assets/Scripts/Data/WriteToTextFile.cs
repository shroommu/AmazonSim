using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;

public class WriteToTextFile : MonoBehaviour {

//[MenuItem("Tools/Write file")]
    public static void WriteString(List<string> dataList)
    {	
		string dir = System.Environment.GetFolderPath(System.Environment.SpecialFolder.MyDocuments) + @"\AmazonDroneSim\";
        string path = dir + "Log_" + System.DateTime.Now.ToString("MMddyyyy_HHmmss") + ".txt";

		Directory.CreateDirectory(dir);

        StreamWriter writer = new StreamWriter(path, true);

		for(int i = 0; i < dataList.Count; i++)
		{
        	writer.WriteLine(dataList[i]);
		}

		writer.Close();

        Debug.Log("wrote file");
    }
}
