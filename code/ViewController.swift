//
//  ViewController.swift
//  code
//
//  Created by 123 on 10.08.2020.
//  Copyright © 2020 123. All rights reserved.
//

import UIKit
var tasksView: TasksPageView!
var mainView: MainPageView!
var rewardView: RewardPageView!
var navigationPanel: NavigationMenu!
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rewardView = RewardPageView(frame: CGRect(x: 2*view.bounds.width, y: 0, width: view.bounds.width, height: view.bounds.height))
        view.addSubview(rewardView)
        
        tasksView = TasksPageView(frame: CGRect(x: view.bounds.width, y: 0, width: view.bounds.width, height: view.bounds.height))
        view.addSubview(tasksView)
        
        mainView = MainPageView(frame: view.bounds)
        view.addSubview(mainView)
        
        navigationPanel = NavigationMenu(frame: CGRect(x: 0, y: 0.86*view.bounds.height, width: view.bounds.width, height: 0.14*view.bounds.height))
        view.addSubview(navigationPanel)
        
        profileView.moreInformationAboutProfileBtn.addTarget(self, action: #selector(openProfileView(sender:)), for: .touchUpInside)
        navigationPanel.TasksPageButton.addTarget(self, action: #selector(openTasksPage(sender:)), for: .touchUpInside)
        navigationPanel.AchovemetPageButton.addTarget(self, action: #selector(openRewarPage(sender:)), for: .touchUpInside)
        navigationPanel.mainPageButton.addTarget(self, action: #selector(openMainPage(sender:)), for: .touchUpInside)
    }
    
    
    var openOrCloseProfileView: Bool! = false
    
    @objc func openProfileView(sender: UIButton) {
        if (openOrCloseProfileView == false){
            openOrCloseProfileView = true
        UIView.animate(withDuration: 0.2, animations: {
            purpleView.frame = CGRect(x: 0, y: -0.1*self.view.bounds.height, width: self.view.bounds.width, height: 0.8*self.view.bounds.height)
            profileView.frame = CGRect(x: 0.05*self.view.bounds.width, y: 0.23*self.view.bounds.height, width: 0.9*self.view.bounds.width, height: 0.43*self.view.bounds.height)
            
        })
        }else{
            openOrCloseProfileView = false
            UIView.animate(withDuration: 0.2, animations: {
                purpleView.frame = CGRect(x: 0, y: -0.1*self.view.bounds.height, width: self.view.bounds.width, height: 0.6*self.view.bounds.height)
                profileView.frame = CGRect(x: 0.05*self.view.bounds.width, y: 0.23*self.view.bounds.height, width: 0.9*self.view.bounds.width, height: 0.23*self.view.bounds.height)
                
            })
        }
    }
    @objc func openMainPage(sender: UIButton) {
        UIView.animate(withDuration: 0.4, animations: {
                mainView.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
                rewardView.frame = CGRect(x: 2*self.view.bounds.width, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
            tasksView.frame = CGRect(x: self.view.bounds.width, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
                navigationPanel.viewUnderChosenItem.frame = CGRect(x: 0.075*navigationPanel.bounds.width, y: 0.05*navigationPanel.bounds.height, width: 0.24*navigationPanel.bounds.width, height: 0.95*navigationPanel.bounds.height)
            })
    }
    @objc func openTasksPage(sender: UIButton) {
        UIView.animate(withDuration: 0.4, animations: {
            mainView.frame = CGRect(x: -self.view.bounds.width, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
            rewardView.frame = CGRect(x: self.view.bounds.width, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
            tasksView.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
            navigationPanel.viewUnderChosenItem.frame = CGRect(x: 0.38*navigationPanel.bounds.width, y: 0.05*navigationPanel.bounds.height, width: 0.24*navigationPanel.bounds.width, height: 0.95*navigationPanel.bounds.height)
        })
    }
    @objc func openRewarPage(sender: UIButton){
        UIView.animate(withDuration: 0.4, animations: {
            mainView.frame = CGRect(x: -2*self.view.bounds.width, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
            rewardView.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
            tasksView.frame = CGRect(x: -self.view.bounds.width, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
            navigationPanel.viewUnderChosenItem.frame = CGRect(x: 0.67*navigationPanel.bounds.width, y: 0.05*navigationPanel.bounds.height, width: 0.24*navigationPanel.bounds.width, height: 0.95*navigationPanel.bounds.height)
        })
    }

}

