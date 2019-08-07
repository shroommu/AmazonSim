using UnityEngine;
using UnityEditor;

public class DestinationCreatorEditor : EditorWindow
{
    int destNum = 0;
	string northSouthCoordinate = "100S";
	string eastWestCoordinate = "100E";

    // Add menu named "My Window" to the Window menu
    [MenuItem("My Tools/Destination Creator")]
    static void Init()
    {
        // Get existing open window or if none, make a new one:
        DestinationCreatorEditor window = (DestinationCreatorEditor)EditorWindow.GetWindow(typeof(DestinationCreatorEditor));
        window.Show();
    }

    void OnGUI()
    {
        GUILayout.Label("Base Settings", EditorStyles.boldLabel);
       	destNum = EditorGUILayout.IntField("Destination Number", destNum);
		northSouthCoordinate = EditorGUILayout.TextField("Destination N/S Coordinates", northSouthCoordinate);
		eastWestCoordinate = EditorGUILayout.TextField("Destination E/W Coordinates", eastWestCoordinate);

		if(GUILayout.Button("Create Destination"))
        {
           DestinationCreator.CreateDestination(destNum, northSouthCoordinate, eastWestCoordinate);
           destNum++;
        }
        
    }
}