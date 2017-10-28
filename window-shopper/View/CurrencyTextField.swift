//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by ViXette on 27/10/2017.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
	
	override func draw(_ rect: CGRect) {
		let size: CGFloat = 20
		
		let currencyLabel = UILabel(frame: CGRect(x: 5, y: frame.size.height / 2 - size / 2, width: size, height: size))
		currencyLabel.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 0.7465485873)
		currencyLabel.textAlignment = .center
		currencyLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
		currencyLabel.layer.cornerRadius = 5.0
		currencyLabel.clipsToBounds = true
		
		let formatter = NumberFormatter()
		formatter.numberStyle = .currency
		formatter.locale = .current
		
		currencyLabel.text = formatter.currencySymbol
		
		addSubview(currencyLabel)
	}

	
	func setupView () {
		backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2467626284)
		layer.cornerRadius = 5.0
		textAlignment = .center
		clipsToBounds = true
		
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
