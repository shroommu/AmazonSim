using UnityEngine;
using UnityEditor;

public class DestinationCreator : MonoBehaviour
{
    public static void CreateDestination(int destNum, string northSouthCoordinate, string eastWestCoordinate)
    {
        SO_Destination asset = ScriptableObject.CreateInstance<SO_Destination>();
		asset.destNum = destNum;
		string destName = northSouthCoordinate + " " + eastWestCoordinate;
		asset.destName = destName;
		destNum++;

        AssetDatabase.CreateAsset(asset, "Assets/ScriptableObjects/Destinations/" + destName + ".asset");
        AssetDatabase.SaveAssets();

        //EditorUtility.FocusProjectWindow();

        Selection.activeObject = asset;
    }
}