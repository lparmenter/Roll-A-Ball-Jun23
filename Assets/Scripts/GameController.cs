using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum WallType { Normal,Punishing}
public enum GameType { Normal, SpeedRun }
public class GameController : MonoBehaviour
{
    public static GameController instance;
    public WallType wallType;
    public GameType gameType;

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
    public void SetGameType(GameType _gameType)
    {
        gameType = _gameType;
    }

    
    //To toggle between punishing walls on or off
    public void ToggleWallType(bool _punishing)
    {
        if (_punishing)
            wallType = WallType.Punishing;
        else
            wallType = WallType.Normal;
    }
    public void ToggleSpeedRun(bool _speedRun)
    {
        if (_speedRun)
            gameType = GameType.SpeedRun;
        else
            gameType = GameType.Normal;
    }
}
