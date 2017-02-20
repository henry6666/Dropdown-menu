//
//  ViewController.swift
//  StackViews2
//
//  Created by Henry Aguinaga on 2017-02-19.
//  Copyright © 2017 Henry Aguinaga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var emojiView: [UIView]! {
    
        didSet {
            emojiView.forEach{
                $0.isHidden = true
            }
        }
    }
    
    @IBOutlet weak var emojiText: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
   
    
    @IBAction func pizzaButton(_ sender: Any) {
        hideButtons()
        
        emojiText.text = "🍕"
    }
    
    @IBAction func heartButton(_ sender: Any) {
        hideButtons()
        
        emojiText.text = "❤️"
        
    }
    @IBAction func upButton(_ sender: Any) {
        hideButtons()
        
        
        emojiText.text = "👍"
    }
    
    @IBAction func elephantButton(_ sender: Any) {
        hideButtons()
        
        emojiText.text = "🐘"
        
    }
    
    @IBAction func worldButton(_ sender: Any) {
        hideButtons()
        
        emojiText.text = "🌏"
        
    }
    @IBAction func sunButton(_ sender: Any) {
        hideButtons()
        
        emojiText.text = "🌝"
        
    }
    
    @IBAction func appleButton(_ sender: Any) {
        hideButtons()
        
        emojiText.text = "🍏"
        
    }
    
    
    

    @IBAction func onSettingsButtonPressed(_ sender: Any) {
        
        hideButtons()
        
    }
    
    func hideButtons() {
        UIView.animate(withDuration: 0.3) {
            self.emojiView.forEach {
                
                $0.isHidden = !$0.isHidden
            }
        }
    }
}

