//
//  ViewControllerAdd.swift
//  ManagerApp
//
//  Created by WILLIAM COX on 11/15/23.
//

import UIKit

class ViewControllerAdd: UIViewController {

    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var roleField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var wageField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func addButton(_ sender: Any) {
        var name = String(nameField.text!)
        var role = String(roleField.text!)
        var age = Int(ageField.text!)
        var wage = Double(wageField.text!)
        
        AppData.employees.append(Employee(name: name, role: role, age: age!, wage: wage!, hours: 0.0, bonus: 0.0))
    }
    
}
