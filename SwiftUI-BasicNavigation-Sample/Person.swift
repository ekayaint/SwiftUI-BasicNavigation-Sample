//
//  Person.swift
//  SwiftUI-BasicNavigation-Sample
//
//  Created by ekayaint on 3.06.2023.
//

import Foundation

class Person {
    var name:String?
    var age:Int?
    var height:Int?
    
    init() {
        
    }
    
    init(name: String, age: Int, height: Int) {
        self.name = name
        self.age = age
        self.height = height
    }
}
