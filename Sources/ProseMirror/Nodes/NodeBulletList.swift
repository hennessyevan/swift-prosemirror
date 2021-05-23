//
//  NodeBulletList.swift
//  
//
//  Created by Lennart Fischer on 22.05.21.
//

import Foundation

public struct NodeBulletList: Codable, Equatable {
    public var type: String = "bulletList"
    public var content: [Content] = []
    
    public init(type: String = "bulletList", content: [Content]) {
        self.type = type
        self.content = content
    }
}
