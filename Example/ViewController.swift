//
//  ViewController.swift
//  Example
//
//  Created by Loïc Griffié on 4 juin 2019.
//  Copyright © 2019 Move Upwards. All rights reserved.
//

import UIKit
import MUHeader

// MARK: - ViewController

/// The ViewController
class ViewController: UIViewController {
    // MARK: Properties

    @IBOutlet private var leftAlign: MUHeader!
    @IBOutlet private var centerAlign: MUHeader!
    @IBOutlet private var rightAlign: MUHeader!

    // MARK: View-Lifecycle
    
    /// View did load
    override func viewDidLoad() {
        super.viewDidLoad()

        leftAlign.title = "My fancy title"
        leftAlign.titleColor = .orange
        leftAlign.detail = "My multi-line detail text! My multi-line detail text! My multi-line detail text!"
        leftAlign.detailColor = .black

        centerAlign.textAlignment = .center
        centerAlign.title = "My fancy title"
        centerAlign.titleColor = .orange
        centerAlign.detail = "My multi-line detail text! My multi-line detail text! My multi-line detail text!"
        centerAlign.detailColor = .black

        rightAlign.textAlignment = .right
        rightAlign.title = "My fancy title"
        rightAlign.titleColor = .orange
        rightAlign.detail = "My multi-line detail text! My multi-line detail text! My multi-line detail text!"
        rightAlign.detailColor = .black
    }

}
