//
//  ViewController.swift
//  FunFacts
//
//  Created by Vernon G Martin on 6/9/16.
//  Copyright © 2016 Vernon G Martin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    let factModel = FactModel()
    @IBAction func showFunFact(sender: AnyObject) {
        let randomColor = ColorModel().getRandomColor()
        view.backgroundColor = randomColor
        funFactLabel.text = factModel.getRandomFact()
        funFactButton.tintColor = randomColor
        //
    }

    override func viewDidLoad() {
        funFactLabel.text = factModel.getRandomFact()
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

