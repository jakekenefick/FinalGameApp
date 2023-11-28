//
//  ViewController.swift
//  ManagerApp
//
//  Created by JAKE KENEFICK on 11/14/23.
//

public class AppData {
    static var employees = [Employee]()
    static var count = 0
    static let defaults = UserDefaults.standard

}
class Employee: Encodable, Decodable {
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
    
    public func changeName(newName: String) {
        name = newName
    }
    public func changeAge(newAge: Int) {
        age = newAge
    }
    public func changeWage(newWage: Double) {
        wage = newWage
    }
}

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        AppData.employees.append(Employee(name: "bob", role: "cook", age: 5, wage: 5.0, hours: 40.2, bonus: 100.3))
        
        
        
        AppData.employees.append(Employee(name: "carl", role: "manager", age: 3, wage: 5.2, hours: 40.1, bonus: 100.5))
        // Do any additional setup after loading the view.
        let encoder = JSONEncoder()
//        if let encoded = try? encoder.encode(AppData.employees) {
//            AppData.defaults.set(encoded, forKey: "Employees")
//        }
        if let items = AppData.defaults.data(forKey: "Employees") {
            let decoder = JSONDecoder()
            if let decoded = try? decoder.decode([Employee].self, from: items) {
                print(decoded[0].name)
                AppData.employees = decoded
                for name in AppData.employees {
                    print(name.name)
                    }
                }
            }
    }
//test please
//hello
    //hello two
}

