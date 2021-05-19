//
//  ViewController.swift
//  PaninTG HW 2.1.2
//
//  Created by Тарас Панин on 18.05.2021.
//

import UIKit

class ViewController: UIViewController {

    var trafficLight: Int?
    
    @IBOutlet var redLight: UIStackView!
    
    @IBOutlet var yellowLight: UIStackView!
    
    @IBOutlet var greenLight: UIStackView!
    
    @IBOutlet var buttonStart: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        redLight.layer.cornerRadius = redLight.frame.size.width / 2
        redLight.clipsToBounds = true
        yellowLight.layer.cornerRadius = yellowLight.frame.size.width / 2
        yellowLight.clipsToBounds = true
        greenLight.layer.cornerRadius = greenLight.frame.size.width / 2
        greenLight.clipsToBounds = true
        
        // Do any additional setup after loading the view.
    }

    @IBAction func buttPres(_ sender: Any) {
        buttonStart.setTitle("NEXT", for: .normal)
        if  let trafficLights = trafficLight {
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
            
            switch trafficLights {
            case 1:
                trafficLight = 2
                yellowLight.alpha = 1
            case 2:
                trafficLight = 3
                greenLight.alpha = 1
            default:
                trafficLight = 1
                redLight.alpha = 1
                break
            }
                } else {
                        trafficLight = 1
                            redLight.alpha = 1
            }
        }
    }
    


