//
//  Buttons.swift
//  Uy Xayvonlari
//
//  Created by Nurillo Domlajonov on 22/11/21.
//

import UIKit

class MyButtons: UIButton{
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    init(title: String,titleColor: UIColor,textSize: CGFloat,backgroundColor: UIColor,radius: CGFloat ,borderW: CGFloat,borderC: CGColor,shadowOp: Float,shadowC: CGColor,shadowOf: CGSize){
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.titleLabel?.font = .boldSystemFont(ofSize: textSize)
        self.backgroundColor = backgroundColor
        self.layer.borderWidth = borderW
        self.layer.borderColor = borderC
        self.layer.shadowOpacity = shadowOp
        self.layer.shadowColor = shadowC
        self.layer.shadowOffset = shadowOf
        self.layer.cornerRadius = radius
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
