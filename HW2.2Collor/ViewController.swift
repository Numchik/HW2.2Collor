//
//  ViewController.swift
//  HW2.2Collor
//
//  Created by Максим Никитюк on 29.01.2021.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var labelRedOne: UILabel!
    @IBOutlet var labelGreenOne: UILabel!
    @IBOutlet var labelBlueOne: UILabel!
    
    @IBOutlet var viewCollour: UIView!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        viewCollour.layer.cornerRadius = 15
        
        sliderRed.minimumTrackTintColor = .red
        sliderGreen.minimumTrackTintColor = .green
        
        setColor()
        
        setValue(for: labelRedOne, labelGreenOne, labelBlueOne)
    }
    
    @IBAction func oldSlaider(_ sender: UISlider) {
        
        setColor()
        
        switch sender.tag {
        case 0: labelRedOne.text = string(from: sender)
        case 1: labelGreenOne.text = string(from: sender)
        case 2: labelBlueOne.text = string(from: sender)
        default: break
        }
    }
    
    private func setColor() {
        viewCollour.backgroundColor = UIColor(red: CGFloat(sliderRed.value),
                                              green: CGFloat(sliderGreen.value),
                                              blue: CGFloat(sliderBlue.value),
                                              alpha: 1)
    }
        private func setValue(for labels: UILabel...) {
            labels.forEach { label in
                switch label.tag {
                case 0: labelRedOne.text = string(from: sliderRed)
                case 1: labelGreenOne.text = string(from: sliderGreen)
                case 2: labelBlueOne.text = string(from: sliderBlue)
                default: break
                }
            }
        }
            private func string(from slider: UISlider) -> String {
                String(format: "%.2f", slider.value)
}

}
 


