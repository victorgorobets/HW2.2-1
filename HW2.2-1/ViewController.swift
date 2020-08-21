//
//  ViewController.swift
//  HW2.2-1
//
//  Created by VICTOR on 21.08.2020.
//  Copyright © 2020 VICTOR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    @IBOutlet weak var resultView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.minimumTrackTintColor = .red
        redSlider.thumbTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        greenSlider.thumbTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.thumbTintColor = .blue
    }
    
    @IBAction func sliderAction() {
        
        let redValue = redSlider.value
        let greenValue = greenSlider.value
        let blueValue = blueSlider.value
        
        // отсекаем до двух знаков после запятой и показываем значение слайдера
        
        redValueLabel.text = String(format: "%.2f", redValue)
        greenValueLabel.text = String(format: "%.2f", greenValue)
        blueValueLabel.text = String(format: "%.2f", blueValue)
        
        // вызов функции смены цвета view
        changeColorView(redValue, greenValue, blueValue)
    }
    
    private func changeColorView(_ red: Float, _ green: Float, _ blue: Float) {
        
        let updatedRed = CGFloat(red / 255)
        let updatedGreen = CGFloat(green / 255)
        let updatedBlue = CGFloat(blue / 255)
        
        resultView.backgroundColor = UIColor(red: updatedRed, green: updatedGreen, blue: updatedBlue, alpha: 1)
    }
    
}

