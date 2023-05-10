//
//  ViewController.swift
//  DemoAPp
//
//  Created by Demo 01 on 05/04/23.
//  Copyright © 2023 scs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var arr = ["Web","Mobile"]
    var selectIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


extension ViewController:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        selectIndex = indexPath.row
//        performSegue(withIdentifier: "seg", sender: self)
//       tableView.deselectRow(at: indexPath, animated: true)
//    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//       let vc = segue.destination as! SecondScreenViewController
//        let indexPath = self.tableView.indexPathForSelectedRow
//        vc.a = arr[indexPath!.row]
//    }
//
  
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondScreenViewController") as! SecondScreenViewController
        vc.a = arr[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
