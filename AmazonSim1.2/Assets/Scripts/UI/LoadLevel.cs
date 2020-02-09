using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.Events;

public class LoadLevel : MonoBehaviour {

	public static LoadLevel instance;

	public string levelName;
	
	public GameObject gameStateManager;
	public UnityEvent levelLoadedEvent;

	void Awake()
	{
		if(instance == null)
		{
			instance = this;
		}
		else if(instance != this)
		{
			Destroy(this);
		}
		
		SceneManager.sceneLoaded += OnSceneLoaded;
	}

	public void SetScene(string _levelName)
	{
		levelName = _levelName;
	}

	public void Load()
	{
		gameStateManager.GetComponent<Animator>().SetTrigger("LoadLevel");
		SceneManager.LoadScene(levelName, LoadSceneMode.Additive);		
	}

	public void OnSceneLoaded(Scene _scene, LoadSceneMode _loaded)
	{
		gameStateManager.GetComponent<Animator>().SetTrigger("StartGame");
		levelLoadedEvent.Invoke();
//		SceneManager.SetActiveScene(SceneManager.GetSceneByName(levelName));
	}

	public void Unload()
	{
		SceneManager.UnloadSceneAsync(levelName);
	}
}