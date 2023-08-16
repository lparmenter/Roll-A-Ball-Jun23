using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum WallType { Normal,Punishing}
public class GameController : MonoBehaviour
{
    public static GameController instance;
    public WallType wallType;

    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }
    }

    //To toggle between punishing walls on or off
    public void ToggleWallType(bool _punishing)
    {
        if (_punishing)
            wallType = WallType.Punishing;
        else
            wallType = WallType.Normal;
    }
}
