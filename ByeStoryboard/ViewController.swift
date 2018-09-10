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
    
    //Create the table view with code
    let mainTableView: UITableView = {
        let tableView = UITableView(frame: UIScreen.main.bounds)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Add the table view to the view controller
        view.addSubview(mainTableView)
        
        //Setup the view title
        navigationItem.title = "Bye Storyboard!"
        
        //Register the table view cell id first
        mainTableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        
        //Setup the delegate and data source of the table view
        mainTableView.delegate = self
        mainTableView.dataSource = self
    }
    
    //MARK: Setup the layout of the UI elements
    func setupLayout() {
        let constraints = [mainTableView.topAnchor.constraint(equalTo: view.topAnchor), mainTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor), mainTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),  mainTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)]
        NSLayoutConstraint.activate(constraints)
        
        mainTableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
}

//MARK: The table view delegates and data source
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.textLabel?.text = "no storyboard is cool"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = DetailViewController()
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}
