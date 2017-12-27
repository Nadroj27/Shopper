//
//  Wage.swift
//  Shopper
//
//  Created by Jordan Vacca on 27/12/2017.
//  Copyright © 2017 Jordan Vacca. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int
    {
        return Int(ceil(price / wage))
    }
    
}
