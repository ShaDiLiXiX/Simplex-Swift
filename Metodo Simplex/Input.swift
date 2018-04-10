//
//  Input.swift
//  Metodo Simplex
//
//  Created by Leonardo Oliveira on 4/10/18.
//  Copyright © 2018 Leonardo Oliveira. All rights reserved.
//

struct Input<T: LosslessStringConvertible> {
    
    let label: String
    
    func read() -> T {
        print("\(label): ", terminator: "")
        guard let line = readLine(), let value = T(line) else {
            print("Value not valid, try again")
            return read()
        }
        return value
    }
    
}
