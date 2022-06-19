//
//  ViewController.swift
//  TrafficLight
//
//  Created by Maxim Datsuk on 19.06.2022.
//

import UIKit

private enum ColorType {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var actionButton: UIButton!
    
    private var colorType = ColorType.red
    
    private let turnOn = 1.0
    private let turnOff = 0.3

    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = turnOff
        yellowView.alpha = turnOff
        greenView.alpha = turnOff
        
        redView.layer.cornerRadius = redView.bounds.width / 2
        yellowView.layer.cornerRadius = yellowView.bounds.width / 2
        greenView.layer.cornerRadius = greenView.bounds.width / 2
        
        actionButton.layer.cornerRadius = 10
    }

    @IBAction func actionButtonTapped() {
        actionButton.setTitle("NEXT", for: .normal)

        switch colorType {
        case .red:
            changeViewsAlpha(red: turnOn, yellow: turnOff, green: turnOff)
            colorType = .yellow
        case .yellow:
            changeViewsAlpha(red: turnOff, yellow: turnOn, green: turnOff)
            colorType = .green
        case .green:
            changeViewsAlpha(red: turnOff, yellow: turnOff, green: turnOn)
            colorType = .red
        }
    }
    
    private func changeViewsAlpha(
        red: CGFloat,
        yellow: CGFloat,
        green: CGFloat
    ) {
        redView.alpha = red
        yellowView.alpha = yellow
        greenView.alpha = green
    }
}

