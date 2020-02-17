//
//  ViewController.swift
//  Snapshots
//
//  Created by Erik Poort on 17/02/2020.
//  Copyright © 2020 Erik Poort. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let card1 = CardView()
        card1.label.text = "This card has one line"
        view.addSubview(card1)
        view.addConstraints([
            card1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            card1.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
        ])
        
        let card2 = CardView()
        card2.label.text = "The text is centered"
        view.addSubview(card2)
        view.addConstraints([
            card2.topAnchor.constraint(equalTo: card1.bottomAnchor, constant: 20),
            card2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            card2.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
        ])
        
        let card3 = CardView()
        card3.label.text = "Accepts multiline"
        view.addSubview(card3)
        view.addConstraints([
            card3.topAnchor.constraint(equalTo: card2.bottomAnchor, constant: 20),
            card3.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            card3.widthAnchor.constraint(equalToConstant: 100),
        ])
        
        let card4 = CardView()
        card4.label.text = "And configuration\nLike letter and line spacing"
        card4.label.letterSpacing = 10
        card4.label.lineHeight = 30
        card4.label.fontSize = 20
        view.addSubview(card4)
        view.addConstraints([
            card4.topAnchor.constraint(equalTo: card3.bottomAnchor, constant: 20),
            card4.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            card4.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
        ])
    }
}
