//
//  ViewController.swift
//  swipe gesture
//
//  Created by Mac on 13/02/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var img1: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSwipe()
    }
    func addSwipe(){
    var swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
    self.view.addGestureRecognizer(swipeRight)
    
    var swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture))
        swipeDown.direction = UISwipeGestureRecognizerDirection.down
    self.view.addGestureRecognizer(swipeDown)
        
        var swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture))
        swipeUp.direction = UISwipeGestureRecognizerDirection.up
        self.view.addGestureRecognizer(swipeUp)
        
        var swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        
        
}
@objc
func respondToSwipeGesture(sender: UIGestureRecognizer) {
    
    if let swipeGesture = sender as? UISwipeGestureRecognizer {
        
        
        switch swipeGesture.direction {
        case UISwipeGestureRecognizerDirection.right:
            print("Swiped right")
            img1.image = UIImage(named: "dog")
            
        case UISwipeGestureRecognizerDirection.down:
            print("Swiped down")
             img1.image = UIImage(named: "cat")
            
        case UISwipeGestureRecognizerDirection.left:
            print("Swiped left")
             img1.image = UIImage(named: "tiger")
            let navigate = self.storyboard?.instantiateViewController(withIdentifier: "next") as! next
            self.navigationController?.pushViewController(navigate, animated: true)
            
        case UISwipeGestureRecognizerDirection.up:
            print("Swiped up")
             img1.image = UIImage(named: "rabbit")
        default:
            break
        }
    }
}
}

