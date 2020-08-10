//
//  NavigationMenu.swift
//  code
//
//  Created by 123 on 10.08.2020.
//  Copyright © 2020 123. All rights reserved.
//

import UIKit

class NavigationMenu: UIView {
    
    var mainPageButton, TasksPageButton, AchovemetPageButton: UIButton!
    var viewUnderChosenItem: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
            
        backgroundColor = .white
        layer.cornerRadius = 10
        
        layer.shadowColor = UIColor.init(white: 0, alpha: 0.7).cgColor
        layer.shadowOpacity = 0.07
        layer.shadowRadius = 6
        layer.shadowOffset = CGSize(width: 0, height: 0)
        
        var navigationItemX = 0.1*self.bounds.width
        
        let navigationItems = ["MainPage", "Tasks", "Achivement"]
        
        for i in navigationItems {
            let nameOfNavigationItem: UILabel = {
                let label = UILabel()
                label.frame = CGRect(x: 0.02*self.bounds.width + navigationItemX, y: 0.8*self.bounds.height, width: 0.15*self.bounds.width, height: 0.15*self.bounds.height)
                label.textAlignment = .center
                label.text = i
                label.font = UIFont(name: "Helvetica", size: FontHelper.getFontSize(strings: [i], font: "Helvetica", maxFontSize: 120, width: label.bounds.width, height: label.bounds.height))
                return label
            }()
            self.addSubview(nameOfNavigationItem)
            
            let navigationItem: UIButton = {
                let item = UIButton()
                item.frame = CGRect(x: 0.02*self.bounds.width + navigationItemX, y: 0.15*self.bounds.height, width: 0.15*self.bounds.width, height: 0.6*self.bounds.height)
                
                if (nameOfNavigationItem.text == "MainPage"){
                     item.setBackgroundImage(UIImage(named: "home"), for: UIControl.State.normal)
                    mainPageButton = item
                }else if (nameOfNavigationItem.text == "Tasks"){
                    item.setBackgroundImage(UIImage(named: "list"), for: UIControl.State.normal)
                    TasksPageButton = item
                }else {
                    item.setBackgroundImage(UIImage(named: "reward"), for: UIControl.State.normal)
                    AchovemetPageButton = item
                }
                return item
            }()
            
            self.addSubview(navigationItem)
            navigationItemX = navigationItemX + 0.3*self.bounds.width
        }
        
            viewUnderChosenItem = UIView()
            viewUnderChosenItem.backgroundColor = UIColor(red: 1, green: 0, blue: 1, alpha: 0.05)
            viewUnderChosenItem.frame = CGRect(x: 0.075*self.bounds.width, y: 0.05*self.bounds.height, width: 0.24*self.bounds.width, height: 0.95*self.bounds.height)
            viewUnderChosenItem.layer.cornerRadius = 25
       
        self.addSubview(viewUnderChosenItem)
        self.sendSubviewToBack(viewUnderChosenItem)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
