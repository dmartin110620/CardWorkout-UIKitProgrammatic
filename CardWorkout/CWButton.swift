//
//  CWButton.swift
//  CardWorkout
//
//  Created by Daniel Felipe Martin Franco on 12/30/25.
//

import UIKit

class CWButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    // If it initialize via storyboard
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // For custom buttons
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        setTitle(title, for: .normal)
        configure()
    }
    
    func configure() {
        layer.cornerRadius = 8
        titleLabel?.font = .systemFont(ofSize: 19, weight: .semibold)
        setTitleColor(.white, for: .normal)
        // Use auto layout
        translatesAutoresizingMaskIntoConstraints = false
    }

}
