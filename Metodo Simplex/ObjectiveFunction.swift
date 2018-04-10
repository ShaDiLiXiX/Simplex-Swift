//
//  ObjectiveFunction.swift
//  Metodo Simplex
//
//  Created by Leonardo Oliveira on 4/9/18.
//  Copyright © 2018 Leonardo Oliveira. All rights reserved.
//

struct ObjectiveFunction {
    
    let variables: [Double]
    var z: [Double] {
        return variables.map { $0 * -1.0 }
    }
    
    init(variables: [Double] = []) {
        self.variables = variables
    }
    
}
