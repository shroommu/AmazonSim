using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class MapButtonAssignerEditor : EditorWindow {
	public DestinationManager destinationManager;

	[MenuItem("My Tools/Map Button Assigner")]
    static void Init()
    {
        // Get existing open window or if none, make a new one:
        MapButtonAssignerEditor window = (MapButtonAssignerEditor)EditorWindow.GetWindow(typeof(MapButtonAssignerEditor));
        window.Show();
    }

    void OnGUI()
    {
        GUILayout.Label("Base Settings", EditorStyles.boldLabel);
       	
		destinationManager = (DestinationManager) EditorGUILayout.ObjectField("Destination Manager", destinationManager, typeof(DestinationManager), true);

		if(GUILayout.Button("Assign"))
        {
           MapButtonAssigner.Assign(destinationManager.destinations, destinationManager.destMapButtons);
        }
	}
}
