//
//  main.swift
//  Metodo Simplex
//
//  Created by Leonardo Oliveira on 4/9/18.
//  Copyright © 2018 Leonardo Oliveira. All rights reserved.
//

import Foundation

let ordinalNumberFormatter = NumberFormatter()
ordinalNumberFormatter.numberStyle = .ordinal

let numberOfVariables = Input<Int>(label: "Number of variables (max 20)").read()

print("Objective function: ")
let variables = (0..<numberOfVariables).map { index -> Double in
    return Input<Double>(label: "Coefficient of the variable x\(index)").read()
}
let objectiveFunction = ObjectiveFunction(variables: variables)

let numberOfRestrictions = Input<Int>(label: "Number of restrictions (max 20)").read()

let restrictions = (0..<numberOfRestrictions).map { index -> Restriction in
    let number = NSNumber(value: index+1)
    print("\(ordinalNumberFormatter.string(from: number)!) restriction")
    let resourceCoefficient = Input<Double>(label: "Resource coefficient").read()
    let restrictionType = Input<RestrictionType>(label: "Restriction type").read()
    let variableCoefficients = (0..<numberOfVariables).map { index -> Double in
        return Input<Double>(label: "Coefficient of the variable x\(index)").read()
    }
    return Restriction(coefficient: resourceCoefficient,
                       restrictionType: restrictionType,
                       variableCoefficients: variableCoefficients)
}


