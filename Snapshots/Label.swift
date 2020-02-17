//
//  Label.swift
//  Snapshots
//
//  Created by Erik Poort on 17/02/2020.
//  Copyright © 2020 Erik Poort. All rights reserved.
//

import UIKit

class Label: UILabel {
    // MARK: Properties
    
    override var text: String? {
        didSet {
            adaptStyle()
        }
    }
    
    var lineHeight: CGFloat = 20 {
        didSet {
            adaptStyle()
        }
    }
    
    var letterSpacing: Double = 2 {
        didSet {
            adaptStyle()
        }
    }
    
    var fontSize: CGFloat = 15 {
        didSet {
            adaptStyle()
        }
    }
    
    // MARK: Object lifecycle
    
    init() {
        super.init(frame: .zero)
        setup()
        adaptStyle()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @available(*, unavailable)
    override var attributedText: NSAttributedString? {
        willSet {
            fatalError("Either use UILabel or consider a new style")
        }
    }
    
    // MARK: Helpers
    
    private func setup() {
        adjustsFontForContentSizeCategory = true
        translatesAutoresizingMaskIntoConstraints = false
        numberOfLines = 0
    }
    
    private func adaptStyle() {
        let font: UIFont = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: fontSize))
        let paragraph = NSMutableParagraphStyle()
        paragraph.lineHeightMultiple = lineHeight / font.lineHeight
        paragraph.alignment = .center
        let attributes: [NSAttributedString.Key: Any] = [
            .font: font,
            .paragraphStyle: paragraph,
            .kern: letterSpacing,
        ]
        super.attributedText = .init(string: text ?? "", attributes: attributes)
    }
    
    override var alignmentRectInsets: UIEdgeInsets {
        var insets = super.alignmentRectInsets
        insets.bottom = ceil(-font.leading - font.descender)
        insets.top = floor(lineHeight - font.xHeight + font.leading + font.descender)
        return insets
    }
}
