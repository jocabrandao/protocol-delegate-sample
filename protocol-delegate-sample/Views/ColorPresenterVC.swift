//
//  ColorPresenterVC.swift
//  protocol-delegate-sample
//
//  Created by João Carlos Brandão on 24/09/17.
//  Copyright © 2017 BWmobi. All rights reserved.
//

import UIKit

/// Protocol to define how the views can interact with me
protocol ColorTransferDelegate {
    
    /// Back information from color chosen by user
    ///
    /// - Parameters:
    ///   - color: define the color chosen by user
    ///   - colorName: define the name of the color chosen by user
    func userDidChoose(color: UIColor, withName colorName: String)
}

class ColorPresenterVC: UIViewController, ColorTransferDelegate {
    
    @IBOutlet weak var colorNameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    /// Protocol implementation
    func userDidChoose(color: UIColor, withName colorName: String) {
        self.view.backgroundColor = color
        colorNameLbl.text = colorName
    }
    
    // Define self as a delegate to perform the interaction
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerVC" {
            guard let colorPickerVC = segue.destination as? ColorPickerVC else { return }
            colorPickerVC.delegate = self
        }
    }
    
}

