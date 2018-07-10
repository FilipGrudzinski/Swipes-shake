//
//  ViewController.swift
//  Swipes & shake
//
//  Created by Filip on 10.07.2018.
//  Copyright © 2018 Filip. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(gesture:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
       
 
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(gesture:)))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(gesture:)))
        swipeUp.direction = UISwipeGestureRecognizerDirection.up
        self.view.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(gesture:)))
        swipeDown.direction = UISwipeGestureRecognizerDirection.down
        self.view.addGestureRecognizer(swipeDown)
        
        
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        if event?.subtype == UIEventSubtype.motionShake {
            
            print("Device was shaken")
            
        }
        
    }
    
    @objc func swiped(gesture: UIGestureRecognizer) {
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            switch swipeGesture.direction {
                
            case UISwipeGestureRecognizerDirection.right:
                print("you swiped right")
            case UISwipeGestureRecognizerDirection.left:
                print("you swiped left")
            case UISwipeGestureRecognizerDirection.up:
                print("You swipe Up")
            case UISwipeGestureRecognizerDirection.down:
                print("you swipe down")
            default:
                break
                 
            }
            
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

