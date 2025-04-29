//
//  EmployeeDetailsViewController.swift
//  CombiApp
//
//  Created by Marcell Fulop on 4/29/25.
//

import UIKit

class EmployeeDetailsViewController: UIViewController {

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var salaryLabel: UILabel!
    var employee: [String: String] = [:]
    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.text = (employee["first name"] ?? "") + " " + (employee["last name"] ?? "")
        titleLabel.text = employee["title"]
        emailLabel.text = employee["email"]
        salaryLabel.text = "$\((Int(employee["salary"] ?? "0") ?? 0).formatted())"
        
    }

}
