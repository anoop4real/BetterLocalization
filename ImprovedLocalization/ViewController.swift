//
//  ViewController.swift
//  ImprovedLocalization
//
//  Created by Anoop M on 2020-02-15.
//  Copyright © 2020 Anoop M. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var scoreLabel: UILabel!
    @IBOutlet private weak var generatedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scoreLabel.text = String(format: Localize(LocalizationConstants.StartUP.scoreMessage), 20)
        generatedLabel.text = LocalizationConstants.StartUP.generatedMessage
        
        
    }


}

