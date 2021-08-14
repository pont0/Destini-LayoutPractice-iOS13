//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var storyBrain = StoryBrain()
    
    
    
    @IBOutlet weak var Label: UILabel!
    
    
    
    override func viewDidLoad() {
        Label.text = storyBrain.stories[storyBrain.storyNumber].title
        
        super.viewDidLoad()
        choice1Button.setTitle(storyBrain.stories[storyBrain.storyNumber].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[storyBrain.storyNumber].choice2, for: .normal)

    }
    @IBAction func choice1Button(_ sender: UIButton) {
    }
    @IBOutlet weak var choice1Button: UIButton!
    
    @IBAction func choice2Button(_ sender: UIButton) {
    }
    @IBOutlet weak var choice2Button: UIButton!
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
           
        let userChoice = sender.currentTitle!
        let next = storyBrain.nextStory(userChoice: userChoice)
        UpdateUI(next: next)
    }
    
    func UpdateUI(next: Story){
        Label.text = next.title
        choice1Button.setTitle(next.choice1, for: .normal)
        choice2Button.setTitle(next.choice2, for: .normal)
            
            
        }
    
}


