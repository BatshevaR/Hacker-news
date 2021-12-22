//
//  PostData.swift
//  Hacker news
//
//  Created by ophir hartom on 21/12/2021.
//

import Foundation

struct Resualts : Decodable{
    let hits : [Post]
}

struct Post : Decodable, Identifiable{
    
    var id: String{
        return objectID
    }
    let points : Int
    let title : String
    let url : String?
    let objectID : String
}
