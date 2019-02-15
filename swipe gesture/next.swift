//
//  next.swift
//  swipe gesture
//
//  Created by Mac on 14/02/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class next: UIViewController {

    @IBOutlet weak var img2: UIImageView!
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
                print("Swiped right2")
                img2.image = UIImage(named: "dog")
                
            case UISwipeGestureRecognizerDirection.down:
                print("Swiped down2")
                img2.image = UIImage(named: "cat")
                
            case UISwipeGestureRecognizerDirection.left:
                print("Swiped left2")
                img2.image = UIImage(named: "tiger")
                let C = navigationController?.viewControllers[0] as! ViewController
                
                navigationController?.popToViewController(C, animated: true)
                
            case UISwipeGestureRecognizerDirection.up:
                print("Swiped up2")
                img2.image = UIImage(named: "rabbit")
            default:
                break
            }
        }
}
}
