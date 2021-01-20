//
//  ResultsViewController.swift
//  Tipp
//
//  Created by Jonathan Burnett on 20/01/2021.
//

import Foundation
import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var result = "0.0"
    var tip = 10
    var split = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = result
        settingsLabel.text = "Split between \(split) people, with \(tip)% tip."
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToResults", sender: self)
        self.dismiss(animated: true, completion: nil)
        
    }
    
}
