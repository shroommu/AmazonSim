using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Tutorial : MonoBehaviour {

	public List<string> tutorialStrings;

	public Text text;
	public int textNum = 0;

	public Button nextButton;
	public Button okayButton;

	void Start()
	{
		text.text = tutorialStrings[0];
	}

	public void ChangeText()
	{
		textNum++;
		text.text = tutorialStrings[textNum];

		if(textNum == tutorialStrings.Count - 1)
		{
			nextButton.gameObject.SetActive(false);
			okayButton.gameObject.SetActive(true);
		}
	}

}
