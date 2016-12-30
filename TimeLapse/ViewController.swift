//
//  ViewController.swift
//  TimeLapse
//
//  Created by Binh Le on 12/29/16.
//  Copyright © 2016 Binh Le. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIViewControllerTransitioningDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        // Nam Comment
    }

    func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            if swipeGesture.direction == UISwipeGestureRecognizerDirection.right {
                
                print("swiped right to continue")
                let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let vc: AlbumViewController = (storyboard.instantiateViewController(withIdentifier: "AlbumViewController") as! AlbumViewController)
                
                vc.transitioningDelegate = self
                vc.modalPresentationStyle = UIModalPresentationStyle.custom
                self.present(vc, animated: true, completion: {() -> Void in
                })

            }
        }
    }
}

