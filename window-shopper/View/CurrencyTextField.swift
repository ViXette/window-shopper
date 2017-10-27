//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by ViXette on 27/10/2017.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {

	func setupView () {
		backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2467626284)
		layer.cornerRadius = 5.0
		textAlignment = .center
		
		attributedPlaceholder = NSAttributedString(string: placeholder ?? "", attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.5)])
		
		textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
	}
	
	
	override func prepareForInterfaceBuilder() {
		setupView()
	}
	
	
	override func awakeFromNib() {
		super.awakeFromNib()
		
		setupView()
	}

}
