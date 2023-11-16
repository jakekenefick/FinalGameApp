//
//  ViewControllerView.swift
//  ManagerApp
//
//  Created by WILLIAM COX on 11/14/23.
//

import UIKit

class ViewControllerView: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var tableviewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableviewOutlet.delegate = self
        tableviewOutlet.dataSource = self
        tableviewOutlet.reloadData()
        // Do any additional setup after loading the view.
    }
    
    
    
    

    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        let blah = indexPath.row
        print(blah)
        AppData.count = blah
            //performSegue(withIdentifier: "toOne", sender: self)
        performSegue(withIdentifier: "toTwo", sender: self)
        
    }
    
   
    
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return AppData.employees.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
            cell.textLabel?.text = "\(AppData.employees[indexPath.row].name)"
            
            return cell
        }
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    
}
