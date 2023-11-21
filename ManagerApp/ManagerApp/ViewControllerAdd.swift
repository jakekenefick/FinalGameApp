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
        
        let name = String(nameField.text!)
        let role = String(roleField.text!)
        let age = Int(ageField.text!)
        let wage = Double(wageField.text!)
        
        
        
        if let w = wage {
            if(w < 13.00){
                let alert = UIAlertController(title: "ERROR", message: "Below minimal wage.", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "ok", style: .default , handler: nil)
                alert.addAction(okAction)
                present(alert, animated: true, completion: nil)
            }
            else {
                if let a = age {
                    AppData.employees.append(Employee(name: name, role: role, age: a, wage: w, hours: 0.0, bonus: 0.0))
                    let alert1 = UIAlertController(title: "", message: "Employee has been added.", preferredStyle: .alert)
                    let yesAction = UIAlertAction(title: "OK", style: .default , handler: nil)
                    alert1.addAction(yesAction)
                    present(alert1, animated: true, completion: nil)
                } else {
                    let alert1 = UIAlertController(title: "", message: "Input valid values", preferredStyle: .alert)
                    let yesAction = UIAlertAction(title: "Ok", style: .default , handler: nil)
                    alert1.addAction(yesAction)
                    present(alert1, animated: true, completion: nil)
                }
            }
        } else {
            let alert1 = UIAlertController(title: "", message: "Input valid values", preferredStyle: .alert)
            let yesAction = UIAlertAction(title: "OK", style: .default , handler: nil)
            alert1.addAction(yesAction)
            present(alert1, animated: true, completion: nil)
        }
    }
    
    
    
    
}
        
    
