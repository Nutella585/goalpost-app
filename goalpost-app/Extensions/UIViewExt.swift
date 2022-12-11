//
//  UIViewExt.swift
//  goalpost-app
//
//  Created by Andrew Pylo on 05.12.2022.
//

import UIKit

extension UIView {
    func bindToKeyboard () {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(_:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
    }
    
    @objc func keyboardWillChange (_ notification: NSNotification) {
        let duration    = notification.userInfo! [UIResponder.keyboardAnimationDurationUserInfoKey] as! Double
        let curve       = notification.userInfo! [UIResponder.keyboardAnimationCurveUserInfoKey]    as! UInt
        let startFrame  = (notification.userInfo! [UIResponder.keyboardFrameBeginUserInfoKey]       as! NSValue).cgRectValue
        let endFrame    = (notification.userInfo! [UIResponder.keyboardFrameEndUserInfoKey]         as! NSValue).cgRectValue
        
        let deltaY      = endFrame.origin.y - startFrame.origin.y
        
        UIView.animateKeyframes(withDuration: duration, delay: 0.0, options: UIView.KeyframeAnimationOptions(rawValue: curve), animations: {
            self.frame.origin.y += deltaY
        }, completion: nil)
    }
}
