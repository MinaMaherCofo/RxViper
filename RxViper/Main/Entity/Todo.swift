//
//  Todo.swift
//  RxViper
//
//  Created by Mina on 3/14/20.
//  Copyright © 2020 Mina. All rights reserved.
//

import Foundation

struct Todo: Decodable {
    var userId: Int
    var id: Int
    var title: String
    var completed: Bool
}
