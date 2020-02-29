using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class DroneStatusButton : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler {

    public RenderTexture rt;
    public SO_Drone sO_Drone;

    public void OnPointerEnter(PointerEventData pointerEventData)
    {
        DroneStatusPopupManager.instance.SetActive(rt, sO_Drone);
    }

    public void OnPointerExit(PointerEventData pointerEventData)
    {
        DroneStatusPopupManager.instance.SetInactive();
    }

}
