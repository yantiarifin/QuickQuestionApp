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
    
    
    @IBAction func AnswerButtonDidTouch(sender: UIButton) {
        sender.selected = !sender.selected;
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FaveAlertView.hidden = true
    }
    
    @IBAction func FaveButtonDidTouch(sender: UIButton) {
        sender.selected = !sender.selected;
        FaveAlertView.hidden = false
        FaveAlertView.alpha = 1.0
        _ = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("update"), userInfo: nil, repeats: false)
    }
    
    func update() {
        UIView.animateWithDuration(1.0, delay: 0.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
            self.FaveAlertView.alpha = 0.0
            }, completion: nil)
        
    }
    
}
