//
//  SecondScreenViewController.swift
//  DemoAPp
//
//  Created by Demo 01 on 06/04/23.
//  Copyright © 2023 scs. All rights reserved.
//

import UIKit

class SecondScreenViewController: UIViewController {
     var a = ""
    var selecteIndex1 = 0
    @IBOutlet weak var tableView2: UITableView!
        var arr1 = ["full stack","fron-end","back-end"]
        var arr2 = ["Android","iOS", "flutter"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        }
    
}
extension SecondScreenViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr1.count}
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if a == "Web"
        {
            cell.textLabel?.text = arr1[indexPath.row]}
        else if a == "Mobile"
        {
            cell.textLabel?.text = arr2[indexPath.row]
        }
        return cell
    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        selecteIndex1 = indexPath.row
//        performSegue(withIdentifier: "seg", sender: self)
//        tableView.deselectRow(at: indexPath, animated: true)
//    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let vc = segue.destination as! ThirdViewController
//        let indexPath = self.tableView2.indexPathForSelectedRow
//        if a == "Web"
//        {
//            vc.a3 = arr1[indexPath!.row ?? 0]
//        }
//        else if a == "Mobile"{
//            vc.a3 = arr2[(indexPath!.row) ?? 0]
//        }
//    }
    
//    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        <#code#>
//    }
}
