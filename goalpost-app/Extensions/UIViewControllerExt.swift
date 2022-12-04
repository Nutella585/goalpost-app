//
//  UIViewControllerExt.swift
//  goalpost-app
//
//  Created by Andrew Pylo on 04.12.2022.
//

import UIKit

//
// MARK: Animation between CViews
//
extension UIViewController {
    func presentDetail (_ viewControllerToPresent: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.2
        transition.type     = CATransitionType.push         // Type of transition
        transition.subtype  = CATransitionSubtype.fromRight // From where transition starts
        
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        present(viewControllerToPresent, animated: false)
    }
    
    func dismissDetail () {
        let transition = CATransition()
        transition.duration = 0.2
        transition.type     = CATransitionType.push        // Type of transition
        transition.subtype  = CATransitionSubtype.fromLeft // From where transition starts
        
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        dismiss(animated: false)
    }
}
