using System;
using UnityEngine;


public class QuitToStart : MonoBehaviour
{ 
public void Quit()
{ 
GameStateManager.instance.PregameState();
LoadLevel.instance.Unload();
}
}
