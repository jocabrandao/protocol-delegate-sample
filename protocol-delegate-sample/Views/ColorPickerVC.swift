//
//  ColorPickerVC.swift
//  protocol-delegate-sample
//
//  Created by João Carlos Brandão on 24/09/17.
//  Copyright © 2017 BWmobi. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {

    // Delegate from protocol
    var delegate: ColorTransferDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /// When the color was chosen, call me to perform a interaction with the presenter.
    ///
    /// - Parameter sender: button that was tapped
    @IBAction func colorBtnTapped(sender: UIButton) {
        if delegate != nil {
            delegate?.userDidChoose(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
            self.navigationController?.popViewController(animated: true)
        }
    }
    
}
