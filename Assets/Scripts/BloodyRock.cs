using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BloodyRock : MonoBehaviour
{
    bool knockedOver = false;
    PlayerController playerController;

    void Start()
    {
        playerController =FindObjectOfType<PlayerController>();
    }

     void Update()
    {
      //A bloody rock is only cosidered knocked over if its past halfway on its rotation
      if (transform.up.y < 0.5f && !knockedOver)
        {
            playerController.BloodyRock();
            knockedOver = true;
        }
    }
}
