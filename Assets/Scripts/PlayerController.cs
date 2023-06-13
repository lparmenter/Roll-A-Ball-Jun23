using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    
    public float speed = 5.0f;
    private Rigidbody rb;
    int pickupCount;

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>(); 
        //Get the number of pickups inour scene
        pickupCount = GameObject.FindGameObjectsWithTag("Pick Up").Length;
        //Run the check pickups funtcion 
        CheckPickups();
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        float moveHorizontal = Input.GetAxis("Horizontal");
        float moveVertical = Input.GetAxis("Vertical");

        Vector3 movement = new Vector3(moveHorizontal, 0, moveVertical);
        rb.AddForce(movement * speed);
          
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
        }
    }

    void CheckPickups()
    {
        //Print the amount of pick up
        print("Pickups Left: " + pickupCount);
        
        if (pickupCount == 0)
        {
            print("Congrats Mate");
        }
    }

}
