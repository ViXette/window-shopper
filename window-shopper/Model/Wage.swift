//
//  Wage.swift
//  window-shopper
//
//  Created by ViXette on 28/10/2017.
//

import Foundation


class Wage {
	
	class func getHours (forWage wage: Double, andPrice price: Double) -> Int {
		return Int(ceil(price / wage))
	}
	
}
