using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneController : MonoBehaviour
{ 
    //Will change our scene to the string passed in
    public void changeScene(string _sceneName)
    {
        SceneManager.LoadScene(_sceneName);
    }

    //Reload the current scene we are in
    public void ReloadScene()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);

    }

    //Loads out Title scene. Must be called Title exactly
    public void ToTitleScene()
    {
        SceneManager.LoadScene("Title");
    }

    //Gets our active Scenes name
    public string GetSceneName()
    {
        return SceneManager.GetActiveScene().name;
    }
    //Quits our game
    public void QuitGame()
    {
        Application.Quit();
    }
}
   
