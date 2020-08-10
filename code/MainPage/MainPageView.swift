//
//  MainPageView.swift
//  code
//
//  Created by 123 on 10.08.2020.
//  Copyright © 2020 123. All rights reserved.
//

import UIKit
var purpleView: UIView!
var profileView: ProfileView!
class MainPageView: UIView {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
    
        purpleView = UIView()
        purpleView.backgroundColor = .purple
        purpleView.frame = CGRect(x: 0, y: -0.1*self.bounds.height, width: self.bounds.width, height: 0.6*self.bounds.height)
        purpleView.layer.cornerRadius = 35
        self.addSubview(purpleView)
    
    let nameOfThisPage: UILabel = {
       let label = UILabel()
        label.text = "Good day, Ghaznar67!"
        label.textColor = .white
        label.frame = CGRect(x: 0.05*bounds.width, y: 0.1*bounds.height, width: 0.6*bounds.width , height: 0.1*bounds.height)
        label.font = UIFont(name: "Helvetica", size: FontHelper.getFontSize(strings: ["Good day, Ghaznar67!"], font: "Helvetica", maxFontSize: 120, width: label.bounds.width, height: label.bounds.height))
        return label
    }()
        self.addSubview(nameOfThisPage)
        
        profileView = ProfileView(frame: CGRect(x: 0.05*self.bounds.width, y: 0.23*self.bounds.height, width: 0.9*self.bounds.width, height: 0.23*self.bounds.height))
        self.addSubview(profileView)
}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
