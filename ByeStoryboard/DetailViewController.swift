//
//  DetailViewController.swift
//  ByeStoryboard
//
//  Created by Peter Leung on 10/9/2018.
//  Copyright © 2018 Peter Leung. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    let detailLabel: UILabel = {
        let label = UILabel()
        label.text = "This is the detail view"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
    }
    
    //MARK: Setup the layout of the UI elements
    func setupLayout() {
        
        //Create the background view
        let backgroundView = UIView()
        backgroundView.backgroundColor = .white
        view.addSubview(backgroundView)
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        
        backgroundView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        //Add the UILabel
        backgroundView.addSubview(detailLabel)

        detailLabel.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor).isActive = true
        detailLabel.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor).isActive = true
    }
}
