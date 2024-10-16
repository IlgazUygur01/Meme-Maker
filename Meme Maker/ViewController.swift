//
//  ViewController.swift
//  Meme Maker
//
//  Created by Ilgaz Uygur on 2.10.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    @IBOutlet weak var topCaptionLabel: UILabel!
    
    @IBOutlet weak var bottomSegmentedControl:UISegmentedControl!
    
    @IBOutlet weak var topSegmentedControl: UISegmentedControl!
    
    let topChoices = [
        CaptionOption(emoji: "😎", caption: "You Know Whats Cool?"),
        CaptionOption(emoji: "💥", caption: "You Know What Makes Me Mad?"),
        CaptionOption(emoji: "💗", caption: "You Know What I love?"),
    ]
    let bottomChoices = [
        CaptionOption(emoji: "🐈", caption: "Cats being hats"),
        CaptionOption(emoji: "🐕", caption: "Dogs Carrying logs."),
        CaptionOption(emoji: "🐒", caption: "Monkeys being funky"),
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    topSegmentedControl.removeAllSegments()
        for choice in topChoices {
    topSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
    topSegmentedControl.selectedSegmentIndex = 0
        
        bottomSegmentedControl.removeAllSegments()
        for choice in bottomChoices {
            bottomSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        bottomSegmentedControl.selectedSegmentIndex = 0
        
        updateCaptions()
    }
    
    
    
    
    
    
    
    
    func updateCaptions() {
        let topIndex = topSegmentedControl.selectedSegmentIndex
        topCaptionLabel.text = topChoices[topIndex].caption
        
        let bottomIndex = bottomSegmentedControl.selectedSegmentIndex
        bottomCaptionLabel.text = bottomChoices[bottomIndex].caption
    
    }
}

