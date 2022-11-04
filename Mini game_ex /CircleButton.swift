//
//  CircleButton.swift
//  Mini game_ex
//
//  Created by Mariya Babenko on 27.10.2022.
//

import UIKit


@IBDesignable

class CircleButton: UIButton {

    @IBInspectable var roundBotton: Bool = false {
        didSet {
            if roundBotton {
                layer.cornerRadius = frame.width / 2
                backgroundColor = .blue
            }
        }
    }
    
    override func prepareForInterfaceBuilder() {
        if roundBotton {
            layer.cornerRadius = frame.width / 2
            backgroundColor = .blue
        }
    }
}
