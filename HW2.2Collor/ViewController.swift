//
//  ViewController.swift
//  HW2.2Collor
//
//  Created by Максим Никитюк on 29.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelRed: UILabel!
    @IBOutlet var labelGreen: UILabel!
    @IBOutlet var labelBlue: UILabel!
    
    @IBOutlet var labelRedOne: UILabel!
    @IBOutlet var labelGreenOne: UILabel!
    @IBOutlet var labelBlueOne: UILabel!
    
    @IBOutlet var viewCollour: UIView!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelRed.text = "yellow"
        labelGreen.text = "Green"
        labelBlue.text = "Blue"
        
        labelRedOne.numberOfLines = 2
        
    
        viewCollour.layer.cornerRadius = 10
        
        sliderRed.value = 0
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 1
        sliderRed.tintColor = UIColor.red
        labelRedOne.text = String(sliderRed.value)
        
        sliderGreen.value = 0
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 1
        sliderGreen.tintColor = UIColor.green
        labelGreenOne.text = String(sliderGreen.value)
        
        sliderBlue.value = 0
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 1
        sliderBlue.tintColor = UIColor.blue
        labelBlueOne.text = String(sliderBlue.value)
    }
    

    @IBAction func controllerRed() {
        labelRedOne.text = String(sliderRed.value)
        viewCollour.backgroundColor = .red
        
    }
    
    @IBAction func controllerGreen() {
        labelGreenOne.text = String(sliderGreen.value)
        viewCollour.backgroundColor = .green
        
    }
    @IBAction func controllerBlue() {
        labelBlueOne.text = String(sliderBlue.value)
        viewCollour.backgroundColor = .blue
    }
    
    @IBAction func oldSlaider() {
    }
    
}
