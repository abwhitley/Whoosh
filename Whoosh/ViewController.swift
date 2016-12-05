//
//  ViewController.swift
//  Whoosh
//
//  Created by Austins Work on 12/5/16.
//  Copyright © 2016 AustinWhitleyWork. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var firstSentence : String? = nil
    var secondSentence : String? = nil
    
    func containsSentence(sentence: String?) -> Bool{
        if sentence != nil{
            return true
        }else{
            return false
        }
    }
    
    func hasBoth(firstSentence : String?, secondSentance: String?) -> Bool{
        if firstSentence != nil && secondSentence != nil{
            return true
        }else{
            return false
        }
    }
    

    @IBOutlet var firstSentenceLabel: UILabel!
    @IBOutlet var secondSentanceLabel: UILabel!
    @IBOutlet var textField: UITextField!
    @IBOutlet var firstSentenceTopConstraint : NSLayoutConstraint!
    @IBOutlet var secondSentenceTopConstraint : NSLayoutConstraint!

    @IBAction func sendButton(_ sender: Any) {
        if firstSentence == nil{
            firstSentence = textField.text
            print(firstSentence!)
            return
        }
        if firstSentence != nil && secondSentence == nil{
            secondSentence = textField.text
            print(secondSentence!)
            firstSentenceLabel.text = firstSentence
            secondSentanceLabel.text = secondSentence
            let firstCurrentConstant = firstSentenceTopConstraint.constant
            let secondCurrentConstant = secondSentenceTopConstraint.constant
            let firstTargetConstant = firstCurrentConstant + self.view.frame.size.height
            let secondTargetConstant = secondCurrentConstant + self.view.frame.size.height

            
            UIView.animate(withDuration: 5.0, animations: { Void in
                self.firstSentenceLabel.isHidden = false
                self.secondSentanceLabel.isHidden = false
                self.firstSentenceTopConstraint.constant = firstTargetConstant
                self.secondSentenceTopConstraint.constant = secondTargetConstant
                self.view .layoutSubviews()
            })
//            UIView.animate(withDuration: 3.0, animations: {
//                self.firstSentenceTopConstraint.constant = firstTargetConstant
//                self.secondSentenceTopConstraint.constant = secondTargetConstant
//
//            })
            
            return
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

