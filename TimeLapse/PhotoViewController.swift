//
//  PhotoViewController.swift
//  TimeLapse
//
//  Created by Binh Le on 12/30/16.
//  Copyright © 2016 Binh Le. All rights reserved.
//

import Foundation
import UIKit

class PhotoViewController: UIViewController, UIViewControllerTransitioningDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            if swipeGesture.direction == UISwipeGestureRecognizerDirection.right {
                
                print("swiped right to continue")
                let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let vc: ImageViewController = (storyboard.instantiateViewController(withIdentifier: "ImageViewController") as! ImageViewController)
                
                vc.transitioningDelegate = self
                vc.modalPresentationStyle = UIModalPresentationStyle.custom
                self.present(vc, animated: true, completion: {() -> Void in
                })
                
            }
        }
    }

}
