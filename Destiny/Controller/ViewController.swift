//
//  ViewController.swift
//  Destiny
//
//  Created by Dmitrii Iakovelv on 02.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       updateUI()
        
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoise: sender.currentTitle!)
        
        updateUI()
        
        
    }
    
    func updateUI() {
        
        storyLabel.text = storyBrain.getTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
        


    }


}

