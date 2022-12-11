//
//  ViewController.swift
//  AnimationApp
//
//  Created by Mac on 11.12.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
 //MARK: - IBOutlets
    
    @IBOutlet var labelView: UILabel!
    @IBOutlet var animationView: SpringView!
    @IBOutlet var animatiomButton: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsView()
    }
    
    @IBAction func startAnimationButton(_ sender: SpringButton) {
        animation()
    }

  // MARK: - ButtonStart
    func animation() {
        animationView.animation = "\(AnimationPreset.allCases.randomElement()!)"
        animationView.curve = "\(AnimationCurve.allCases.randomElement()!)"
        animationView.animate()
        labelView.text = "\(AnimationPreset.allCases.randomElement()!)\n\(AnimationCurve.allCases.randomElement()!)"
        
    }
    
    //MARK: - SettingsStartView
    func settingsView() {
        animationView.layer.cornerRadius = 10
        animatiomButton.layer.cornerRadius = 10
        labelView.text = "Animation"
    }
}
