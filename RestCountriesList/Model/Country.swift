//
//  Country.swift
//  RestCountriesList
//
//  Created by iMac on 2022-08-22.
//

import Foundation

struct Country: Codable
{
    let name : Name
    let capital: [String]?
    let population: Int
    let area: Double
    let flag: String
}

struct Name: Codable
{
    let official, common: String?
}
