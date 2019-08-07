using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CanvasManager : MonoBehaviour
{

    public MenuMethods activeMenu;

    public void ShowMenu(MenuMethods _menu)
    {
        if(_menu.isPopup)
        {
            _menu.OpenPopup(activeMenu);
        }

        else
        {
            //sets current activeMenu invisible
            if (activeMenu != null)
            {
                activeMenu.Display(false);
            }

            //sets new activeMenu
            activeMenu = _menu;
            //sets new activeMenu visible
            activeMenu.Display(true);
        }
    }
}
