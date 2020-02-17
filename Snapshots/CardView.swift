//
//  CardView.swift
//  Snapshots
//
//  Created by Erik Poort on 17/02/2020.
//  Copyright © 2020 Erik Poort. All rights reserved.
//

import UIKit

class CardView: UIView {
    // MARK: Properties
    
    let label = Label()

    // MARK: Object lifecycle
    
    init() {
        super.init(frame: .zero)
        setup()
    }
    
    @available(* ,unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Helpers
    
    private func setup() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .systemGray6
        layer.cornerRadius = 5
        layer.shadowOffset = .init(width: 0, height: 5)
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowRadius = 5
        
        addSubview(label)
        addConstraints([
            label.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
        ])
    }
}
