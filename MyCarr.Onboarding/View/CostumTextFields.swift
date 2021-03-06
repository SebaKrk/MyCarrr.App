//
//  CostumTextFields.swift
//  MyCarr.Onboarding
//
//  Created by Sebastian Sciuba on 22/03/2021.
//

import UIKit

 class CostumTextFields: UITextField {
    
    init (placeHolder: String, colorText: UIColor,bottomLinieColor: UIColor, isSecure: Bool? = false) {
        
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        
        let spacer = UIView()
        spacer.heightAnchor.constraint(equalToConstant: 50).isActive = true
        spacer.widthAnchor.constraint(equalToConstant: 12).isActive = true
        leftView = spacer
        leftViewMode = .always
        
        textColor = colorText
        font = UIFont(name: "Sen-Regular", size: 16)
        placeholder = placeHolder
        attributedPlaceholder = NSAttributedString(string: placeHolder ,attributes: [.foregroundColor: UIColor(white: 1, alpha: 0.5)])
        heightAnchor.constraint(equalToConstant: 50).isActive = true
        keyboardType = .emailAddress

        let bottomLine = UIView()
        addSubview(bottomLine)
        bottomLine.translatesAutoresizingMaskIntoConstraints = false
        bottomLine.backgroundColor = bottomLinieColor
        bottomLine.heightAnchor.constraint(equalToConstant: 2.0).isActive = true
        bottomLine.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor).isActive = true
        bottomLine.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor).isActive = true
        bottomLine.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        isSecureTextEntry = isSecure!
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
