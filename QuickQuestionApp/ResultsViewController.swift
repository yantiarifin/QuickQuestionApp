//
//  ResultsViewController.swift
//  QuickQuestionApp
//
//  Created by Arifin, Yanti on 11/5/15.
//  Copyright © 2015 Arifin, Yanti. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var ResultsView: UIView!
    @IBOutlet weak var ResultsGenderView: SpringView!
    @IBOutlet weak var GenderButton: UIButton!
    @IBOutlet weak var ResultsButton: UIButton!
    @IBOutlet weak var AgeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //Results type buttons on bottom
    func GenderButtonDidTouch(sender: UIButton) {
        sender.selected = !sender.selected
        ResultsButton.selected = false
        AgeButton.selected = false
        ResultsView.hidden = true
        ResultsGenderView.hidden = false
    }
    func ResultsButtonDidTouch(sender: UIButton) {
        sender.selected = !sender.selected
        GenderButton.selected = false
        AgeButton.selected = false
        ResultsView.hidden = false
        ResultsGenderView.hidden = true
    }
    func AgeButtonDidTouch(sender: UIButton) {
        sender.selected = !sender.selected
    }
    

}
