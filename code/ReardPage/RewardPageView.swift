//
//  RewardPageView.swift
//  code
//
//  Created by 123 on 11.08.2020.
//  Copyright © 2020 123. All rights reserved.
//

import UIKit

class RewardPageView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
        
        let purpleView: UIView = {
           let view = UIView()
            view.frame = CGRect(x: 0, y: -0.1*self.bounds.height, width: self.bounds.width, height: 0.25*self.bounds.height)
            view.backgroundColor = .purple
            view.layer.cornerRadius = 25
            return view
        }()
        self.addSubview(purpleView)
        
        for i in userRewards {
            let newReward = RewardView(frame: CGRect(x: 0.05*self.bounds.width, y: 0.3*self.bounds.width, width: 0.9*self.bounds.width, height: 0.15*self.bounds.height), rewardName: i)
            self.addSubview(newReward)
        }
        
        let rewardLabel: UILabel = {
           let label = UILabel()
            label.frame = CGRect(x: 0.1*self.bounds.width, y: 0.05*self.bounds.height, width: 0.9*self.bounds.width, height: 0.05*self.bounds.height)
            label.text = "Your rewards:"
            label.font = UIFont(name: "Helvetica", size: FontHelper.getFontSize(strings: ["Your rewards:"], font: "Helvetica", maxFontSize: 100, width: label.bounds.width, height: label.bounds.height))
            label.textColor = .white
            label.textAlignment = .left
            return label
        }()
        self.addSubview(rewardLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
