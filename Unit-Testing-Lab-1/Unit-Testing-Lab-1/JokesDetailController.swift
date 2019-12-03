//
//  JokesDetailController.swift
//  Unit-Testing-Lab-1
//
//  Created by Kelby Mittan on 12/3/19.
//  Copyright © 2019 Kelby Mittan. All rights reserved.
//

import UIKit

class JokesDetailController: UIViewController {

    @IBOutlet weak var punchlineLabel: UILabel!
    
    var joke: Jokes?

    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }

    func updateUI() {
        guard let validJoke = joke else {
            fatalError("could not load joke")
        }
        
        punchlineLabel.text = validJoke.punchline
    }

}
