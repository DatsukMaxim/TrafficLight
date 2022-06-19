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
        redView.layer.cornerRadius = redView.bounds.width / 2
        redView.backgroundColor = UIColor.red.withAlphaComponent(0.3)
        
        yellowView.layer.cornerRadius = yellowView.bounds.width / 2
        yellowView.backgroundColor = UIColor.yellow.withAlphaComponent(0.3)
        
        greenView.layer.cornerRadius = greenView.bounds.width / 2
        greenView.backgroundColor = UIColor.green.withAlphaComponent(0.3)
        
        actionButton.layer.cornerRadius = 10
    }

    @IBAction func actionButtonTapped() {
        actionButton.setTitle("NEXT", for: .normal)

        switch colorType {
        case .red:
            changeViewsBackgroundColorWithAlpha(red: 1, yellow: 0.3, green: 0.3)
            colorType = .yellow
        case .yellow:
            changeViewsBackgroundColorWithAlpha(red: 0.3, yellow: 1, green: 0.3)
            colorType = .green
        case .green:
            changeViewsBackgroundColorWithAlpha(red: 0.3, yellow: 0.3, green: 1)
            colorType = .red
        }
    }
    
    private func changeViewsBackgroundColorWithAlpha(
        red: CGFloat,
        yellow: CGFloat,
        green: CGFloat
    ) {
        redView.backgroundColor = UIColor.red.withAlphaComponent(red)
        yellowView.backgroundColor = UIColor.yellow.withAlphaComponent(yellow)
        greenView.backgroundColor = UIColor.green.withAlphaComponent(green)
    }
}

