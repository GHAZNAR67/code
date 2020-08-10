//
//  RewardView.swift
//  code
//
//  Created by 123 on 11.08.2020.
//  Copyright © 2020 123. All rights reserved.
//

import UIKit

class RewardView: UIView {
    
    init(frame: CGRect, rewardName: String) {
        super.init(frame: frame)
        
        layer.shadowColor = UIColor.init(white: 0, alpha: 1).cgColor
        layer.shadowOpacity = 0.07
        layer.shadowRadius = 10
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.cornerRadius = 15
        backgroundColor = .white
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
