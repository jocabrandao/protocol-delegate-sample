//
//  ColorTransferDelegate.swift
//  protocol-delegate-sample
//
//  Created by João Carlos Brandão on 24/09/17.
//  Copyright © 2017 BWmobi. All rights reserved.
//

import Foundation
import UIKit

protocol ColorTransferDelegate {
    func userDidChoose(color: UIColor, withName colorName: String)
}
