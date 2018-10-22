//
//  Registration.swift
//  Hotel Manzana
//
//  Created by Denis Bystruev on 18/10/2018.
//  Copyright © 2018 Denis Bystruev. All rights reserved.
//

import Foundation

struct Registration {
    var firstName: String
    var lastName: String
    var emailAddress: String
    
    var checkInDate: Date
    var checkOutDate: Date
    var numberOfAdults: Int
    var numberOfChildren: Int
    
    var roomType: RoomType
    var wifi: Bool
}

struct RoomType {
    var id: Int
    var name: String
    var shortName: String
    var price: Int
    
    static var all: [RoomType] {
        return [
            RoomType(id: 0, name: "Две кровати", shortName: "2Q", price: 179),
            RoomType(id: 1, name: "Одна кровать", shortName: "1K", price: 209),
            RoomType(id: 2, name: "Пентхаус", shortName: "PHS", price: 309),
        ]
    }
}

extension RoomType: Equatable {
    static func ==(lhs: RoomType, rhs: RoomType) -> Bool {
        return lhs.id == rhs.id
    }
}
