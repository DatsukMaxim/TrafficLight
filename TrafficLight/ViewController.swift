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

    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        redView.layer.cornerRadius = redView.bounds.width / 2
        yellowView.layer.cornerRadius = yellowView.bounds.width / 2
        greenView.layer.cornerRadius = greenView.bounds.width / 2
        
        actionButton.layer.cornerRadius = 10
    }

    @IBAction func actionButtonTapped() {
        actionButton.setTitle("NEXT", for: .normal)

        switch colorType {
        case .red:
            changeViewsAlpha(red: 1, yellow: 0.3, green: 0.3)
            colorType = .yellow
        case .yellow:
            changeViewsAlpha(red: 0.3, yellow: 1, green: 0.3)
            colorType = .green
        case .green:
            changeViewsAlpha(red: 0.3, yellow: 0.3, green: 1)
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

