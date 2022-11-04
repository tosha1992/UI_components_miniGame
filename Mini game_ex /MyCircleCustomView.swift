//
//  MyCircleCustomView.swift
//  Mini game_ex
//
//  Created by Mariya Babenko on 28.10.2022.
//

import UIKit

@IBDesignable class MyCircleCustomView: UIView {

    
    var workView: UIView!
    var xibName: String = "MyCircleCustomView"
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setCustomView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setCustomView()
    }
    
    func getFromXib () -> UIView {
        let bundle = Bundle (for: type(of: self))
        let xib = UINib (nibName: xibName, bundle: bundle)
        let view = xib.instantiate(withOwner: self, options: nil).first as! UIView
        
        return view
    }
    func setCustomView () {
        workView = getFromXib()
        workView.frame = bounds
        workView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        workView.layer.cornerRadius = frame.size.width / 2
        workView.backgroundColor = .blue
        addSubview(workView)
    }
    
   
    
}

    

    
