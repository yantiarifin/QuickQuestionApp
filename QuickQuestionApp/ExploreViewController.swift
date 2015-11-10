//
//  ExploreViewController.swift
//  QuickQuestionApp
//
//  Created by Arifin, Yanti on 11/1/15.
//  Copyright © 2015 Arifin, Yanti. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController {

    @IBOutlet weak var PollCardView: DesignableView!
    @IBOutlet weak var ProfileBarView: UIView!
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var AnswersView: UIView!
    @IBOutlet weak var FaveAlertView: DesignableView!
    
    @IBOutlet weak var SubmitAnswerButton: DesignableButton!

//Answer options
    @IBOutlet weak var Answer1Button: DesignableButton!
    @IBOutlet weak var Answer2Button: DesignableButton!
    @IBOutlet weak var Answer3Button: DesignableButton!
    @IBOutlet weak var Answer4Button: DesignableButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FaveAlertView.hidden = true
        SubmitAnswerButton.hidden = true
    }
    
//Answer options - 1 action for each answer
    @IBAction func Answer1ButtonDidTouch(sender: UIButton) {
        Answer1Button.selected = true
        Answer1Button.animation = "fadeIn"
        Answer1Button.curve = "easeOut"
        Answer1Button.animate()
        Answer2Button.selected = false
        Answer3Button.selected = false
        Answer4Button.selected = false
        SubmitAnswerButton.hidden = false

    }
    
    @IBAction func Answer2ButtonDidTouch(sender: UIButton) {
        Answer2Button.selected = true
        Answer2Button.animation = "fadeIn"
        Answer2Button.curve = "easeOut"
        Answer2Button.animate()
        Answer1Button.selected = false
        Answer3Button.selected = false
        Answer4Button.selected = false
        SubmitAnswerButton.hidden = false

    }

    @IBAction func Answer3DidTouch(sender: UIButton) {
        Answer3Button.selected = true
        Answer3Button.animation = "fadeIn"
        Answer3Button.curve = "easeOut"
        Answer3Button.animate()
        Answer1Button.selected = false
        Answer2Button.selected = false
        Answer4Button.selected = false
        SubmitAnswerButton.hidden = false
    }
    
    @IBAction func Answer4DidTouch(sender: UIButton) {
        Answer4Button.selected = true
        Answer4Button.animation = "fadeIn"
        Answer4Button.curve = "easeOut"
        Answer4Button.animate()
        Answer1Button.selected = false
        Answer2Button.selected = false
        Answer3Button.selected = false
        SubmitAnswerButton.hidden = false

    }
    
//Favorites - tap on add to favorites icon
    @IBAction func FaveButtonDidTouch(sender: UIButton) {
        sender.selected = !sender.selected;
        FaveAlertView.hidden = false
        FaveAlertView.animation = "zoomIn"
        FaveAlertView.animate()
        FaveAlertView.alpha = 1.0
        _ = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("update"), userInfo: nil, repeats: false)
    }
//Favorites - animation when icon tapped
    func update() {
        UIView.animateWithDuration(1.0, delay: 0.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
            self.FaveAlertView.alpha = 0.0
            }, completion: nil)
    }
}
