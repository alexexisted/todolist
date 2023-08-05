//
//  User.swift
//  ToDoList
//
//  Created by Alexa G on 02.07.2023.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let emali: String
    let joined: TimeInterval
}
