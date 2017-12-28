//
//  ViewController.swift
//  AnimalSounds
//
//  Created by Mateusz Pałka on 12.07.2017.
//  Copyright © 2017 Mateusz Pałka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let meowSound = SimpleSound(named: "meow")
    let mooSound = SimpleSound(named: "moo")
    let woofSound = SimpleSound(named: "woof")
    
    @IBOutlet weak var animalSoundLabel: UILabel!

    @IBAction func catButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Meow!"
        meowSound.play()
    }

    @IBAction func dogButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Woof!"
        woofSound.play()
    }
    
    @IBAction func cowButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Moo!"
        mooSound.play()
    }
    
}

