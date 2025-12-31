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
    }
    
    // If it initialize via storyboard
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // For custom buttons
    init(color: UIColor, title: String, systemImageName: String) {
        super.init(frame: .zero)
        
        configuration = .prominentClearGlass()
        configuration?.title = title
        configuration?.baseBackgroundColor = color.withAlphaComponent(0.4)
        configuration?.baseForegroundColor = color
        configuration?.cornerStyle = .medium
        
        configuration?.image = UIImage(systemName: systemImageName)
        configuration?.imagePadding = 10
        translatesAutoresizingMaskIntoConstraints = false
    }
    

}
