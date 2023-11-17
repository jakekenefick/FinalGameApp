//
//  ViewController.swift
//  ManagerApp
//
//  Created by JAKE KENEFICK on 11/14/23.
//

public class AppData {
    static var employees = [Employee]()
    static var count = 0
}
class Employee {
    var name: String
    var role: String
    var age: Int
    var wage: Double
    var hours: Double
    var bonus: Double
    
    public init(name: String, role: String, age: Int, wage: Double, hours: Double, bonus: Double) {
        self.name = name
        self.role = role
        self.age = age
        self.wage = wage
        self.hours = hours
        self.bonus = bonus
    }
}

import UIKit

class ViewController: UIViewController {
    
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        AppData.employees.append(Employee(name: "bob", role: "cook", age: 5, wage: 5.0, hours: 40.2, bonus: 100.3))
        
        
        
        AppData.employees.append(Employee(name: "carl", role: "manager", age: 3, wage: 5.2, hours: 40.1, bonus: 100.5))
        // Do any additional setup after loading the view.
            
    }
//test please
//hello
    //hello two
}

