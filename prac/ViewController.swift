//
//  ViewController.swift
//  prac
//
//  Created by MacStudent on 2020-01-10.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var box: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        moveDown()
    
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipedRight))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        view.addGestureRecognizer(swipeRight)
    }
    
    @objc func swipedRight(gestureRecognizer : UIGestureRecognizer)  {
        print("swiping right eh?")
    }
    
    func moveDown() {
       
        UIView.animate(withDuration: 3.0, delay: 0, options: .transitionCurlDown, animations: {
            
            self.box.frame.origin.y = self.box.frame.origin.y + 818
            
        }) { (fin) in
            if fin {
               
                print("fin")
                self.moveUp()
                
            }
        }
    }
    func moveRight(){
        print("moving right")
//        let guide = self.view.safeAreaLayoutGuide
//        let width = guide.layoutFrame.width
            UIView.animate(withDuration: 3.0, delay: 0, options: .transitionCurlDown, animations: {
                
                
                self.box.frame.origin.x = self.view.frame.width + self.view.safeAreaInsets.right
            }) { (fin) in
                if fin {
                    self.box.frame.origin.x = self.view.frame.width + self.view.safeAreaInsets.right
                    self.moveUp()
                }
            }
        }
    func moveUp() {
        print("moving up")
        UIView.animate(withDuration: 3.0, delay: 0, options: .transitionCurlDown, animations: {
            
            self.box.frame.origin.y = self.box.frame.origin.y - 818
            
        }) { (fin) in
            if fin {
                print("fin")
                self.moveDown()
                
            }
        }
    }
}


