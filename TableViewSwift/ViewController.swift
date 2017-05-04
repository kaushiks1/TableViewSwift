//
//  ViewController.swift
//  TableViewSwift
//
//  Created by SILICON on 03/10/16.
//  Copyright © 2016 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var arrayTableViewData : [String] = []
    
    let cellReuseIdentifier = "cell"

    
    @IBOutlet var tableViewNew: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayTableViewData = ["USA","Los Angles"]
        arrayTableViewData.append("San Francisco")
        arrayTableViewData.append("San Deago")
        
        print("\(arrayTableViewData)")
        tableViewNew.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)

        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arrayTableViewData.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell!
        
        cell.textLabel?.text = arrayTableViewData[indexPath.row]
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        print("\(arrayTableViewData[indexPath.row])")
    }
}

