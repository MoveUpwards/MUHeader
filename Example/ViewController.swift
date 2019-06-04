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
    
    /// The Label
    lazy var header: MUHeader = {
        let header = MUHeader()
        header.title = "My fancy title"
        header.titleColor = .orange
        header.detail = "My multi-line detail text!"
        header.detailColor = .black
        return header
    }()
    
    // MARK: View-Lifecycle
    
    /// View did load
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        view.addSubview(header)

        header.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        header.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

}
