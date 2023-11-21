//
//  ViewControllerEdit.swift
//  ManagerApp
//
//  Created by WILLIAM COX on 11/20/23.
//

import UIKit

class ViewControllerEdit: UIViewController {

    let selectedEmployee = AppData.count
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var newNameLabel: UITextField!
    @IBOutlet weak var newAgeField: UITextField!
    @IBOutlet weak var newWageField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = AppData.employees[selectedEmployee].name
        // Do any additional setup after loading the view.
    }
    
    @IBAction func setName(_ sender: Any) {
        let newName = newNameLabel.text!
        nameLabel.text = newName
        AppData.employees[selectedEmployee].changeName(newName: newName)
        alerts()
    }
    @IBAction func setAge(_ sender: Any) {
        let newAge = Int(newAgeField.text!)
        if let a = newAge {
            AppData.employees[selectedEmployee].changeAge(newAge: a)
            alerts()
        }
    }
    @IBAction func setWage(_ sender: Any) {
        let newWage = Double(newWageField.text!)
        if let b = newWage {
            AppData.employees[selectedEmployee].changeWage(newWage: b)
            alerts()
        }
    }
    func alerts () {
        let alert = UIAlertController(title: "Success", message: "Change successful", preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okAlert)
        present(alert, animated: true, completion: nil)
    }
}
