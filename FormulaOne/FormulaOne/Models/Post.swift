//
//  Data.swift
//  FormulaOne
//
//  Created by Olimpio Junior on 05/02/21.
//


import Foundation

struct Post: Codable, Identifiable{

    
    let id : UUID
    let Season : Int
    let Pilot : String
    let Description : String
//    let Image : String
}
    

