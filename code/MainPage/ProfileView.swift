//
//  ProfileView.swift
//  code
//
//  Created by 123 on 10.08.2020.
//  Copyright © 2020 123. All rights reserved.
//

import UIKit

class ProfileView: UIView {
    var moreInformationAboutProfileBtn: UIButton!
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
        self.layer.cornerRadius = 20
        
        let profileName: UILabel = {
           let label = UILabel()
            label.text = userName!
            label.textAlignment = .left
            label.frame = CGRect(x: 0.35*self.bounds.width, y: 0.15*self.bounds.height, width: 0.7*self.bounds.width, height: 0.2*self.bounds.height)
            label.font = UIFont(name: "Helvetica", size: FontHelper.getFontSize(strings: [userName!], font: "Helvetica", maxFontSize: 120, width: label.bounds.width, height: label.bounds.height))
            return label
        }()
        self.addSubview(profileName)
        
        let profileLevel: UILabel = {
                  let label = UILabel()
                   label.text = "Profile level: " + String(profileLvl!)
                   label.textAlignment = .left
                   label.frame = CGRect(x: 0.35*self.bounds.width, y: 0.35*self.bounds.height, width: 0.7*self.bounds.width, height: 0.2*self.bounds.height)
                   label.font = UIFont(name: "Helvetica", size: FontHelper.getFontSize(strings: [userName!], font: "Helvetica", maxFontSize: 120, width: label.bounds.width, height: label.bounds.height))
                   return label
               }()
        self.addSubview(profileLevel)
        
      
            moreInformationAboutProfileBtn = UIButton()
            moreInformationAboutProfileBtn.frame = CGRect(x: 0.85*self.bounds.width, y: 0.75*self.bounds.height, width: 0.1*self.bounds.width, height: 0.1*self.bounds.width)
            moreInformationAboutProfileBtn.setBackgroundImage(UIImage(named: "info"), for: UIControl.State.normal)
           
        self.addSubview(moreInformationAboutProfileBtn)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
