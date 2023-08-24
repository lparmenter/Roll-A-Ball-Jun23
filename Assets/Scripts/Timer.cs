using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class Timer : MonoBehaviour
{
    public float currentTime;
    float bestTime;
    bool timing;

    SceneController sceneController;
    public GameController gameController;

    [Header("UI Countdown Panel")]
    public GameObject countdownPanel;
    public TMP_Text countdownText;

    [Header("UI In Game Panel")]
    public TMP_Text timerText;

    [Header("UI Game Over Panel")]
    public GameObject timesPanel;
    public TMP_Text myTimeResult;
    public TMP_Text bestTimeResult;

    private void Start()
    {
        timesPanel.SetActive(false);
        countdownPanel.SetActive(false);
        timerText.text = "";
        sceneController = FindObjectOfType<SceneController>();

    }

    void Update()
    {
        if (timing == true)
        {
            currentTime += Time.deltaTime;
            timerText.text = currentTime.ToString("F2");
        }

    }

    public IEnumerator StartCountdown()
    {
        yield return new WaitForEndOfFrame();
        if (PlayerPrefs.HasKey("BestTime"))
        {
            bestTime = PlayerPrefs.GetFloat("Best Time" + sceneController.GetSceneName());
        }
        else
        {
            bestTime = 1000;
        }

        countdownPanel.SetActive(true);
        countdownText.text = "3";
        yield return new WaitForSeconds(1);
        countdownText.text = "2";
        yield return new WaitForSeconds(1);
        countdownText.text = "1";
        yield return new WaitForSeconds(1);
        countdownText.text = "GO!";
        yield return new WaitForSeconds(1);
        StartTimer();
        countdownPanel.SetActive(false);
    }

    public void StartTimer()
    {
        currentTime = 0;
        timing = true;
    }

    public void StopTimer()
    {
        timing = false;
        timesPanel.SetActive(true);
        myTimeResult.text = "Your Time: " + currentTime.ToString("F2");
        bestTimeResult.text = bestTime.ToString("F2");

        if(currentTime <= bestTime)
        {
            bestTime = currentTime;
            PlayerPrefs.SetFloat("Best Time: " + sceneController.GetSceneName(), bestTime);
            bestTimeResult.text = bestTime.ToString("F2") + " ** NEW BEST! **";
        }
    }

    public bool IsTiming()
    {
        return timing;
    }

    public float GetTime()
    {
        return currentTime;
    }
    

}
