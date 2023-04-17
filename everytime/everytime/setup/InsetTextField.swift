//
//  InsetTextField.swift
//  everytime
//
//  Created by 박진성 on 2023/04/17.
//

import Foundation
import UIKit

class InsetTextField: UITextField {
    var insetX: CGFloat = 0 {
        didSet {
            layoutIfNeeded()
        }
    }
    
    var insetY: CGFloat = 0 {
        didSet {
            layoutIfNeeded()
        }
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX, dy: insetY)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX, dy: insetY)
    }
    
}
