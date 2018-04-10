//
//  Restriction.swift
//  Metodo Simplex
//
//  Created by Leonardo Oliveira on 4/10/18.
//  Copyright © 2018 Leonardo Oliveira. All rights reserved.
//

enum RestrictionType: String, LosslessStringConvertible {
    case equal = "="
    case greaterThanOrEqual = ">="
    case lessThanOrEqual = "<="
    
    init?(_ description: String) {
        self.init(rawValue: description)
    }
    
    var description: String {
        return rawValue
    }
    
}

struct Restriction {
    
    var coefficient: Double
    let restrictionType: RestrictionType
    var variableCoefficients: [Double]
    
}
