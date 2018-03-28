//
//  ViewController.swift
//  Yoga Manager
//
//  Created by Fayez Altamimi on 27/03/2018.
//  Copyright © 2018 Fayez Altamimi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    let mainViewModel = MainViewModel()
    
    var lastRowPosition = 0
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        if(mainViewModel.getGroups().count > 0)
        {
            lastRowPosition = mainViewModel.getGroups().count
        }
    
        return mainViewModel.getGroups().count + 1
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1")! //1.
        
        var text = String()

        if(indexPath.row == lastRowPosition)
        {
           text = "Add a new group"
        }
        
        else{
        
         let groups = mainViewModel.getGroups() 
        
        text = groups[indexPath.row].name! //2.
        }
        
        cell.textLabel?.text = text //3.
        
        return cell //4.
    }
}

