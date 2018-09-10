//
//  ViewController.swift
//  ByeStoryboard
//
//  Created by Peter Leung on 10/9/2018.
//  Copyright © 2018 Peter Leung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let cellId = "cell"
    
    let mainTableView: UITableView = {
        let tableView = UITableView(frame: UIScreen.main.bounds)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(mainTableView)
        
    }
    
    func setupLayout() {
        let constraints = [mainTableView.topAnchor.constraint(equalTo: view.topAnchor), mainTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor), mainTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),  mainTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)]
        NSLayoutConstraint.activate(constraints)
        
        mainTableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
}

