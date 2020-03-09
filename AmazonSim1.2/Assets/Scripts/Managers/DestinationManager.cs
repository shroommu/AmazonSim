using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DestinationManager : MonoBehaviour {

	public static DestinationManager instance;

	public List<SO_Destination> destinations;
	public List<SO_Destination> destsWithPkgs;
	public List<SO_Package> packages;
	public List<SO_Package> packagesWithDests;
	public List<GameObject> destMapButtons;

	public GameObject destinationSelectWindow;
	public GameObject destinationButtonPrefab;
	public DestinationButtonManager destinationButtonManager;

	public AnimationCurve weightCurve;

	public int startingNumDests;
	public bool canGenerate = true;
	public int waitTime;
	public int buttonNum = 0;

	private int missedDeliveries;
	public int maxMissedDeliveries = 5;
	public Text gameOverText;

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
	}

	public void StartGame()
	{

		for(int i = 0; i < destMapButtons.Count; i++)
		{
			destMapButtons[i].GetComponent<DestinationMapButton>().sO_Destination = destinations[i];
		}

		for(int i = 1; i < startingNumDests; i++)
		{
			int destNum = Random.Range(0, destinations.Count);
			Generate(destNum);
		}

		StartCoroutine(GenerateDestinations());
	}

	IEnumerator GenerateDestinations()
	{
		while(canGenerate)
		{
			if(packages.Count > 0 && destinations.Count > 0)
			{
					int destNum = Random.Range(0, destinations.Count);
					Generate(destNum);
			}
			else
			{
				print("out of Package Scriptable Objects");
			}
			
			yield return new WaitForSeconds(waitTime);
		}
	}

	public void Generate(int destNum)
	{
		SO_Destination thisDest = destinations[destNum];
		SO_Package thisPackage = packages[0];

		thisDest.desiredPackage = thisPackage;

		destinations.Remove(thisDest);
		destsWithPkgs.Add(thisDest);

		packages.Remove(thisPackage);
		packagesWithDests.Add(thisPackage);

		SetPackageWeight(thisPackage);
		SetPackagePoints(thisPackage);

		thisDest.desiredPackage = thisPackage;

		GameObject newDestButton = Instantiate(destinationButtonPrefab);
		DestinationButton thisDestButton = newDestButton.GetComponent<DestinationButton>();

		thisDestButton.sO_Destination = thisDest;
		thisDestButton.sO_Package = thisDest.desiredPackage;
		thisDestButton.buttonNum = buttonNum;
		thisDestButton.mapButton = destMapButtons[thisDest.destNum];
		thisDestButton.mapButton.SetActive(true);

		thisDestButton.destMapButton = thisDestButton.mapButton.GetComponent<DestinationMapButton>();
		thisDestButton.destMapButton.destinationButton = thisDestButton;
		thisDestButton.destMapButton.sO_Package = thisPackage;
		thisDestButton.destMapButton.destinationButtonManager = destinationButtonManager;

		buttonNum++;
		destinationButtonManager.destinationButtons.Add(thisDestButton);
		thisDestButton.StartDestroyTimer();

		newDestButton.transform.SetParent(destinationSelectWindow.transform);
		newDestButton.transform.localScale = Vector3.one;
		newDestButton.GetComponent<Button>().onClick.AddListener(() => {destinationButtonManager.OnButtonClicked(thisDestButton.buttonNum);});

		thisDestButton.Display();
	}

	public void SetPackageWeight(SO_Package pkg)
	{
		float randNum = Random.Range(0.0f, 1.0f);
		pkg.pkgWeight = (float)System.Math.Round(weightCurve.Evaluate(randNum) * 5, 2);
	}

	public void SetPackagePoints(SO_Package pkg)
	{
		pkg.pkgPoints = (int)(pkg.pkgWeight * 100);
	}

	public void ReusePackage(SO_Package pkg)
	{
		if(pkg != null)
		{
			packages.Add(pkg);
			packagesWithDests.Remove(pkg);
		}
	}

	public void ReuseDestination(SO_Destination dest)
	{
		if(dest != null)
		{
			destinations.Add(dest);
			destsWithPkgs.Remove(dest);
		}
	}

	public void IncreaseMissedDeliveries()
	{ 
		missedDeliveries++;

		if (missedDeliveries >= maxMissedDeliveries)
		{ 
			GameStateManager.instance.PostgameState();
			gameOverText.text = "You missed too many deliveries";
		}
	}

}
