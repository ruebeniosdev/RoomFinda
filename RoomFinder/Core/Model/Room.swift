//
//  Room.swift
//  RoomFinder
//
//  Created by Rueben on 09/01/2025.
//

import Foundation

struct Room: Identifiable {
    var id: Int
    var image: String
    var title: String
    var price: Int
    var location: String
    var rating: Double
}

var rooms: [Room] = [
    Room(id: 1,
         image: "Downtown",
         title: "Modern Downtown Loft",
         price: 1,
         location: "Downtown, New York",
         rating: 4.8),
    Room(id: 2,
          image: "Miami",
          title: "Cozy Beach House",
          price: 200,
          location: "Miami Beach, Florida",
          rating: 4.9),
    Room( id: 3,
          image: "Colorado",
          title: "Mountain View Cabin",
          price: 150,
          location: "Aspen, Colorado",
          rating: 4.7),
    Room( id: 4,
          image: "Beverly",
          title: "Luxury Penthouse",
          price: 300,
          location: "Beverly Hills, LA",
          rating: 5.0)
    
]
