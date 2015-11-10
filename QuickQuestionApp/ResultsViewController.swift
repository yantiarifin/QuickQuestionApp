//
//  ResultsViewController.swift
//  QuickQuestionApp
//
//  Created by Arifin, Yanti on 11/5/15.
//  Copyright © 2015 Arifin, Yanti. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
//IBOutlets
    
    //Results type
    @IBOutlet weak var ResultsView: UIView!
    @IBOutlet weak var ResultsGenderView: SpringView!
    
    //General results bars
    @IBOutlet weak var resultsBar1: SpringView!
    @IBOutlet weak var resultsBar2: SpringView!
    @IBOutlet weak var resultsBar3: SpringView!
    @IBOutlet weak var resultsBar4: SpringView!
    
    //Gender results bars
    @IBOutlet weak var resultsGenderBar1: SpringView!
    @IBOutlet weak var resultsGenderBar2: SpringView!
    @IBOutlet weak var resultsGenderBar3: SpringView!
    @IBOutlet weak var resultsGenderBar4: SpringView!
    
    //Bottom buttons
    @IBOutlet weak var GenderButton: UIButton!
    @IBOutlet weak var ResultsButton: UIButton!
    @IBOutlet weak var AgeButton: UIButton!

    
    
//When screen loads
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ResultsView.hidden = false
        ResultsGenderView.hidden = true
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        resultsBar1.animate()
        resultsBar2.animate()
        resultsBar3.animate()
        resultsBar4.animate()
    }


//Results type bottom tabs
    @IBAction func GenderButtonDidTouch(sender: UIButton) {
        GenderButton.selected = true
        ResultsButton.selected = false
        AgeButton.selected = false
        ResultsGenderView.hidden = false
        ResultsView.hidden = true
        resultsGenderBar1.animate()
        resultsGenderBar2.animate()
        resultsGenderBar3.animate()
        resultsGenderBar4.animate()
    }
    
    
    @IBAction func ResultsButtonDidTouch(sender: UIButton) {
        ResultsButton.selected = true
        GenderButton.selected = false
        AgeButton.selected = false
        ResultsView.hidden = false
        ResultsGenderView.hidden = true
        resultsBar1.animate()
        resultsBar2.animate()
        resultsBar3.animate()
        resultsBar4.animate()
    }
    
    @IBAction func AgeButtonDidTouch(sender: UIButton) {
        AgeButton.selected = true
        ResultsButton.selected = false
        GenderButton.selected = false
    }
}
