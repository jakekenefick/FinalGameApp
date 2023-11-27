//
//  ViewControllerEmployee.swift
//  ManagerApp
//
//  Created by WILLIAM COX on 11/14/23.
//

import UIKit

class ViewControllerEmployee: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var wageLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var bonusLabel: UILabel!
    
    @IBOutlet weak var bonusTextField: UITextField!
    @IBOutlet weak var hoursTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = AppData.employees[AppData.count].name
        ageLabel.text = "\(AppData.employees[AppData.count].age)"
        wageLabel.text = "\(AppData.employees[AppData.count].wage)"
        hoursLabel.text = "\(AppData.employees[AppData.count].hours)"
        bonusLabel.text = "\(AppData.employees[AppData.count].bonus)"
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        nameLabel.text = AppData.employees[AppData.count].name
        ageLabel.text = "\(AppData.employees[AppData.count].age)"
        wageLabel.text = "\(AppData.employees[AppData.count].wage)"
        hoursLabel.text = "\(AppData.employees[AppData.count].hours)"
        bonusLabel.text = "\(AppData.employees[AppData.count].bonus)"        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func bonusButton(_ sender: Any) {
        if let a = Double(bonusTextField.text!) {
            let b = a + AppData.employees[AppData.count].bonus
            AppData.employees[AppData.count].bonus = b
            bonusLabel.text = "\(b)"
        }
        
    }
    
    @IBAction func addHoursButton(_ sender: Any) {
        if let a = Double(hoursTextField.text!) {
            let b = a + AppData.employees[AppData.count].hours
            AppData.employees[AppData.count].hours = b
            hoursLabel.text = "\(b)"
        }
    }
    
    @IBAction func fireEmployeeButton(_ sender: Any) {
    }
    
}
