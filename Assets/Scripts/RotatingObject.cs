using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotatingObject : MonoBehaviour
{
    public float waitTime = 5;
    public float speed = 10;
    bool rotated = false;
    Vector3 startRotation;
    public Vector3 toRotation = new Vector3(0, 90, 0);

    public void Start()
    {
        startRotation = transform.localEulerAngles;
        StartCoroutine(Rotate());
    }

    IEnumerator Rotate()
    {
        Vector3 newRot = rotated ? startRotation : toRotation;
        var toAngle = Quaternion.Euler(newRot);
        while (transform.localRotation != toAngle) 
        {
            transform.localRotation = Quaternion.RotateTowards(transform.localRotation,toAngle,speed * Time.deltaTime);
            yield return null;  
        }
        yield return new WaitForSeconds(waitTime);
        rotated = !rotated;
        StartCoroutine(Rotate());
    }
}
