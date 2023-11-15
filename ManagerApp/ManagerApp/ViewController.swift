//
//  ViewController.swift
//  ManagerApp
//
//  Created by JAKE KENEFICK on 11/14/23.
//

public class AppData {
    static var employees = [String]()
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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//test please
//hello
    //hello two
}

