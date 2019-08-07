using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;

public class MapButtonAssigner : MonoBehaviour {

	public static void Assign(List<SO_Destination> destinations, List<GameObject> mapButtons)
	{
		for(int i = 0; i < mapButtons.Count; i++)
		{
			Undo.RecordObject(mapButtons[i].gameObject, "assigned so_Destination");
			mapButtons[i].GetComponent<DestinationMapButton>().sO_Destination = destinations[i];

		}

	}


}
