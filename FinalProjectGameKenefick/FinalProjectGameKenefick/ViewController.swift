//
//  ViewController.swift
//  FinalProjectGameKenefick
//
//  Created by JAKE KENEFICK on 12/5/23.
//

import UIKit
public class Dice{
    
    static var stack = [Die]()
    static let defaults = UserDefaults.standard

}
class Die: Encodable, Decodable {
    var number: Int
    public init(number:Int ) {
        self.number = number
    }
}




class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

