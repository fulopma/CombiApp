//
//  CountryViewController.swift
//  CombiApp
//
//  Created by Marcell Fulop on 4/29/25.
//

import UIKit

class CountryViewController: UIViewController {

    @IBOutlet weak var countryTable: UITableView!
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

}


struct Country: Decodable {
    let capital: String
    let code: String
    let currency: Currency
    let flag: String
    let language: Language
    let name: String
    let region: String
}

struct Currency: Decodable {
    let code: String
    let name: String
    let symbol: String?
}

struct Language: Decodable {
    let code: String?
    let name: String
}
