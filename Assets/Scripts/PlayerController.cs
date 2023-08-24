using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    
    public float speed = 5.0f;
    private Rigidbody rb;
    int pickupCount;
    private Timer timer;
    private bool gameOver = false;
    public GameObject resetPoint;
    bool resetting = false;
    Color originalColour;
    public GameObject jumpScarePanel;

    //Controllers
    CameraController cameraController;
    GameController gameController;

    
    public GameObject inGamePanel;
    public GameObject winPanel;
    public TMP_Text scoreText;
    public TMP_Text timerText;
    public TMP_Text winTimeText;
    [Header("Particles")]
    public GameObject pickupParticle;
    // Start is called before the first frame update
    void Start()
    {

        rb = GetComponent<Rigidbody>(); 
        //Get the number of pickups in our scene
        pickupCount = GameObject.FindGameObjectsWithTag("Pick Up").Length;
        //Run the check pickups funtcion 
        CheckPickups();
        //Get the timer object
        timer = FindObjectOfType<Timer>();
        //Turn on our in game panel
        inGamePanel.SetActive(true);
        //Turn on our in game panel
        winPanel.SetActive(false);
        resetPoint = GameObject.FindGameObjectWithTag("Reset");
        originalColour = GetComponent<Renderer>().material.color;
        gameController = FindObjectOfType<GameController>();
        cameraController = FindObjectOfType<CameraController>();

        if (gameController.gameType == GameType.SpeedRun)
        {
            StartCoroutine(timer.StartCountdown());
        }


    }

    private void Update()
    {
        timerText.text = "Time" + timer.GetTime().ToString("F1");
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        if (gameController.gameType == GameType.SpeedRun && !timer.IsTiming())
            return;

        if (resetting)
            return;

        if (gameOver == true)
        {
            return;
        }

        float moveHorizontal = Input.GetAxis("Horizontal");
        float moveVertical = Input.GetAxis("Vertical");

        Vector3 movement = new Vector3(moveHorizontal, 0, moveVertical);
   

        if (cameraController.cameraStyle == CameraStyle.Free)
        {
            //Rotates the players to the direction of the camera
            transform.eulerAngles = Camera.main.transform.eulerAngles;
            //translate the input vectors into coordinates
            movement = transform.TransformDirection(movement);
        }
        rb.AddForce(movement * speed);
    }

    private void OnCollisionEnter(Collision collision)
    {
        if(collision.gameObject.CompareTag("Respawn"))
        {
            StartCoroutine(ResetPlayer());
        }
        if (collision.gameObject.CompareTag("Axe"))
        {
            StartCoroutine(ResetPlayer());
            jumpScarePanel.SetActive(true);
        }
        if (collision.gameObject.CompareTag("Wall"))
        {
            if (gameController.wallType == WallType.Punishing)
                StartCoroutine(ResetPlayer());
        }
    }

    public IEnumerator ResetPlayer()
    {
        resetting = true;
        GetComponent<Renderer>().material.color = Color.black;
        rb.velocity = Vector3.zero;
        Vector3 startPos = transform.position;
        float resetSpeed = 2f;
        var i = 0.0f;
        var rate = 1.0f / resetSpeed;
        while (i < 1.0f)
        {
            i += Time.deltaTime * rate;
            transform.position = Vector3.Lerp(startPos, resetPoint.transform.position, i);
            yield return null;
        }
        jumpScarePanel.SetActive(false);
        GetComponent<Renderer>().material.color = originalColour;
        resetting = false;

    }






    private void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Pick Up")
        {
            Destroy(other.gameObject);
            //Decroment the pickup count
            pickupCount -= 1;
            //Run the check pickups funtcion 
            CheckPickups();
            //Create particle effect
            Instantiate(pickupParticle, transform.position, transform.rotation);
        }
    }

    void CheckPickups()
    {
        
        //Display the amount of pickups left in our scene
        scoreText.text = "Pickups Left: " + pickupCount;
        if (pickupCount == 0)
        {
            WinGame();
           
        }
    }

    public void BloodyRock()
    {
        pickupCount += 1;
        CheckPickups();
    }


    void WinGame()
    {
        //Set the game over to true
        gameOver = true;
        //Stop timer
        timer.StopTimer();
        //Turn on our win panel
        winPanel.SetActive(true);
        //Tuen off our in game panel
        inGamePanel.SetActive(false);
        //Display the timer on the win time text
        winTimeText.text = "Congrats Mate, Your Time was: " + timer.GetTime().ToString("F1");

        //Set the velocity of the ridgedbody to zero
        rb.velocity = Vector3.zero;
        rb.angularVelocity = Vector3.zero;

        if(gameController.gameType == GameType.SpeedRun)
        {
            timer.StopTimer();
        }
    }

    //Temporary - Remove when doing mdules in A2
    public void RestartGame()
    {
        UnityEngine.SceneManagement.SceneManager.LoadScene(UnityEngine.SceneManagement.SceneManager.GetActiveScene().name);
    }

    public void QuitGame()
    {
        Application.Quit();
    }

}
