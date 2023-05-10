//
//  FirstScreeen.swift
//  DemoAPp
//
//  Created by Demo 01 on 24/04/23.
//  Copyright © 2023 scs. All rights reserved.
//

import UIKit

struct Model {
    let it:String
    let languages:[String]
}



class FirstScreeen: UIViewController {

    
    @IBOutlet weak var myTableView: UITableView!
    
    var arr = [
        Model(it: "Front-End", languages: ["HTML","JaveScript","Css","C#"])
        , Model(it: "Back-End", languages: [".net","PHP","Python","Ruby",]),
          Model(it: "App", languages: ["Andorid","iOS"])
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}


extension FirstScreeen:UITableViewDataSource,UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arr[section].it
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr[section].languages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.lbl.text = arr[indexPath.section].languages[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .yellow
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = .orange
    }
    
}
