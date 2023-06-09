//
//  ViewController.swift
//  Example
//
//  Created by bulut.oztemur on 16.04.23.
//

import UIKit
import MySampleFrameworkKit

class ViewController: MySampleVC {
    
    var colors: [UIColor] = [.red, .green, .blue, .orange, .purple]
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeBackground(withColor: colors[currentIndex])
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleClick)))
    }
    
    @objc func handleClick() {
        currentIndex += 1
        
        if !colors.indices.contains(currentIndex) {
            currentIndex = 0
        }
        
        changeBackground(withColor: colors[currentIndex])
    }
}
