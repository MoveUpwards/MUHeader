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
    
    /// Left align example
    lazy var leftAlign: MUHeader = {
        let header = MUHeader()
        header.title = "My fancy title"
        header.titleColor = .orange
        header.detail = "My multi-line detail text! My multi-line detail text! My multi-line detail text! My multi-line detail text!"
        header.detailColor = .black
        return header
    }()

    /// Center align example
    lazy var centerAlign: MUHeader = {
        let header = MUHeader()
        header.textAlignment = .center
        header.title = "My fancy title"
        header.titleColor = .orange
        header.detail = "My multi-line detail text! My multi-line detail text! My multi-line detail text! My multi-line detail text!"
        header.detailColor = .black
        return header
    }()

    /// Right align example
    lazy var rightAlign: MUHeader = {
        let header = MUHeader()
        header.textAlignment = .right
        header.title = "My fancy title"
        header.titleColor = .orange
        header.detail = "My multi-line detail text! My multi-line detail text! My multi-line detail text! My multi-line detail text!"
        header.detailColor = .black
        return header
    }()
    
    // MARK: View-Lifecycle
    
    /// View did load
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        view.addSubview(leftAlign)
        view.addSubview(centerAlign)
        view.addSubview(rightAlign)

        leftAlign.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        leftAlign.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        leftAlign.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true

        centerAlign.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        centerAlign.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        centerAlign.topAnchor.constraint(equalTo: leftAlign.bottomAnchor, constant: 40).isActive = true

        rightAlign.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        rightAlign.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        rightAlign.topAnchor.constraint(equalTo: centerAlign.bottomAnchor, constant: 40).isActive = true
    }

}
