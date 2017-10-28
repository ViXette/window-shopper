//
//  ViewController.swift
//  window-shopper
//
//  Created by ViX on 04/10/2017.
//

import UIKit


class MainVC: UIViewController {

	@IBOutlet weak var wage_textField: CurrencyTextField!
	@IBOutlet weak var price_textField: CurrencyTextField!
	@IBOutlet weak var result_label: UILabel!
	@IBOutlet weak var hours_label: UILabel!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let calc_button = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
		calc_button.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
		calc_button.setTitle("Calculate", for: .normal)
		calc_button.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
		calc_button.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
		
		wage_textField.inputAccessoryView = calc_button
		price_textField.inputAccessoryView = calc_button
		
		result_label.isHidden = true
		hours_label.isHidden = true
	}
	
	
	@IBAction func clearCalculatorTapped(_ sender: UIButton) {
		wage_textField.text = ""
		price_textField.text = ""
		result_label.isHidden = true
		hours_label.isHidden = true
	}
	
	
	@objc func calculate () {
		if let wage = wage_textField.text, let price = price_textField.text {
			if let wage = Double(wage), let price = Double(price) {
				view.endEditing(true)
				
				result_label.isHidden = false
				hours_label.isHidden = false
				
				result_label.text = String(Wage.getHours(forWage: wage, andPrice: price))
			}
		}
	}

}
