//
//  ResultsViewContro/Users/campususer/Documents/Lab2-27/CalculatorViewController.swiftller.swift
//  Lab2-27
//
//  Created by CampusUser on 2/27/17.
//  Copyright © 2017 Alexander Edgar. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let swipeRight = UISwipeGestureRecognizer(target:self, action:#selector(handleSwipe))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        view.addGestureRecognizer(swipeRight)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func handleSwipe(_ sender: UIGestureRecognizer) {
        self.performSegue(withIdentifier:"unwindToCalc", sender:self)
    }

}
