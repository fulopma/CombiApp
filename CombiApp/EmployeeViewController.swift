//
//  EmployeeViewController.swift
//  CombiApp
//
//  Created by Marcell Fulop on 4/29/25.
//

import UIKit

class EmployeeViewController: UIViewController {
    let employees = [
        [
            "first name": "Michael",
            "last name": "Scott",
            "title": "Regional Manager",
            "email": "michael.scott@dundermifflin.com",
            "salary": "100000",
        ],
        [
            "first name": "Dwight",
            "last name": "Schrute",
            "title": "Assistant to the Regional Manager",
            "email": "dwight.schrute@dundermifflin.com",
            "salary": "50000",
        ],
        [
            "first name": "Jim",
            "last name": "Halpert",
            "title": "Sales Representative",
            "email": "jim.halpert@dundermifflin.com",
            "salary": "60000",
        ],
        [
            "first name": "Pam",
            "last name": "Beesly",
            "title": "Receptionist",
            "email": "pam.beesly@dundermifflin.com",
            "salary": "40000",
        ],
        [
            "first name": "Ryan",
            "last name": "Howard",
            "title": "Office Temp",
            "email": "ryan.howard@dundermifflin.com",
            "salary": "30000",
        ],
        [
            "first name": "Andy",
            "last name": "Bernard",
            "title": "Sales Representative",
            "email": "andy.bernard@dundermifflin.com",
            "salary": "60000",
        ],
        [
            "first name": "Stanley",
            "last name": "Hudson",
            "title": "Sales Representative",
            "email": "stanley.hudson@dundermifflin.com",
            "salary": "60000",
        ],
        [
            "first name": "Kevin",
            "last name": "Malone",
            "title": "Accountant",
            "email": "kevin.malone@dundermifflin.com",
            "salary": "50000",
        ],
        [
            "first name": "Creed",
            "last name": "Bratton",
            "title": "Quality Assurance",
            "email": "creed.bratton@dundermifflin.com",
            "salary": "45000",
        ],
        [
            "first name": "Angela",
            "last name": "Martin",
            "title": "Head Accountant",
            "email": "angelina.martin@dundermifflin.com",
            "salary": "75000",
        ],

    ]

    @IBOutlet weak var employeeTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        employeeTable.dataSource = self
        employeeTable.delegate = self
    }

}

extension EmployeeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employees.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "employeeCell", for: indexPath) as? EmployeeTableViewCell
        cell?.fullNameLabel.text = (employees[indexPath.row]["first name"] ?? "") + " " + (employees[indexPath.row]["last name"] ?? "")
        cell?.titleLabel.text = employees[indexPath.row]["title"] ?? ""
        return cell ?? UITableViewCell()
    }
    
}

extension EmployeeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = sb.instantiateViewController(withIdentifier: "EmployeeDetailsViewController")
                as? EmployeeDetailsViewController else{
            return
        }
        vc.employee = employees[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
