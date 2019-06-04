//
//  MUHeader.swift
//  MUHeader
//
//  Created by Loïc Griffié on 4 juin 2019.
//  Copyright © 2019 Move Upwards. All rights reserved.
//

// Include Foundation
@_exported import Foundation

import UIKit

/// Class that define a title and a detail description.
@IBDesignable
open class MUHeader: UIView {
    private var titleLabel = UILabel()
    private var detailLabel = UILabel()
    private var labelsSpacing: NSLayoutConstraint?

    // MARK: - Title Label

    /// The current title.
    @IBInspectable open var title: String = "" {
        didSet {
            titleLabel.text = title
        }
    }

    /// The title’s font.
    @objc open dynamic var titleFont: UIFont = .systemFont(ofSize: 34.0, weight: .regular) {
        didSet {
            titleLabel.font = titleFont
        }
    }

    /// The title’s text color.
    @IBInspectable open dynamic var titleColor: UIColor = .black {
        didSet {
            titleLabel.textColor = titleColor
        }
    }

    // MARK: - Detail Label

    /// The current detail description.
    @IBInspectable open var detail: String = "" {
        didSet {
            detailLabel.text = detail
        }
    }

    /// The detail’s font.
    @objc open dynamic var detailFont: UIFont = .systemFont(ofSize: 14.0, weight: .semibold) {
        didSet {
            detailLabel.font = detailFont
        }
    }

    /// The detail’s text color.
    @IBInspectable open dynamic var detailColor: UIColor = .black {
        didSet {
            detailLabel.textColor = detailColor
        }
    }

    // MARK: - Generic

    /// The text’s horizontal alignment.
    @objc open dynamic var textAlignment: NSTextAlignment = .left {
        didSet {
            titleLabel.textAlignment = textAlignment
            detailLabel.textAlignment = textAlignment
        }
    }

    /// Optional: The IBInspectable version of the text’s horizontal alignment.
    @IBInspectable open var textAlignmentInt: Int {
        get {
            return textAlignment.rawValue
        }
        set {
            textAlignment = NSTextAlignment(rawValue: newValue) ?? .left
        }
    }

    /// The text’s vertical spacing.
    @IBInspectable open dynamic var spacing: CGFloat = 8.0 {
        didSet {
            labelsSpacing?.constant = spacing
        }
    }

    /// The natural size for the receiving view, considering only properties of the view itself.
    override open var intrinsicContentSize: CGSize {
        return .zero
    }

    // MARK: - Life cycle

    /// Initializes and returns a newly allocated view object with the specified frame rectangle.
    convenience public init() {
        self.init(frame: .zero)

        translatesAutoresizingMaskIntoConstraints = false
    }

    /// Initializes and returns a newly allocated view object with the specified frame rectangle.
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    /// Returns an object initialized from data in a given unarchiver.
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    // MARK: - Public functions

    /// Return the height the header will have if constraint with this width.
    open func expectedHeight(for width: CGFloat) -> CGFloat {
        let size = CGSize(width: width, height: .greatestFiniteMagnitude)
        return titleLabel.sizeThatFits(size).height + spacing + detailLabel.sizeThatFits(size).height
    }

    /// Return the size with a force sizeToFit (for unit tests only)
    internal func debugSize() -> CGSize {
        titleLabel.sizeToFit()
        detailLabel.sizeToFit()
        return CGSize(width: max(titleLabel.bounds.width, detailLabel.bounds.width),
                      height: titleLabel.bounds.height + spacing + detailLabel.bounds.height)
    }

    // MARK: - Private functions

    private func setup() {
        titleLabel.textColor = titleColor
        titleLabel.font = titleFont
        addSubview(titleLabel)

        detailLabel.textColor = detailColor
        detailLabel.font = detailFont
        addSubview(detailLabel)

        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        detailLabel.translatesAutoresizingMaskIntoConstraints = false

        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true

        let spacingContrainst = NSLayoutConstraint(item: detailLabel,
                                                   attribute: .top,
                                                   relatedBy: .equal,
                                                   toItem: titleLabel,
                                                   attribute: .bottom,
                                                   multiplier: 1,
                                                   constant: spacing)
        spacingContrainst.isActive = true
        labelsSpacing = spacingContrainst

        detailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        detailLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        detailLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
}
