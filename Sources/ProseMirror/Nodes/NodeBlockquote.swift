//
//  NodeBlockquote.swift
//  
//
//  Created by Lennart Fischer on 23.05.21.
//

import Foundation

public struct NodeBlockquote: Codable, Equatable {
    
    public var type: String = "blockquote"
    public var content: [Content]
    
    public init(type: String = "blockquote", content: [Content]) {
        self.type = type
        self.content = content
    }
    
}
    
#if canImport(SwiftUI)
import SwiftUI

public extension NodeBlockquote {
    
    @ViewBuilder
    func render() -> some View {
        content.reducedText().padding(.leading).background(HStack {
            Rectangle()
                .fill(Color.primary)
                .frame(maxWidth: 3)
            Spacer()
        })
    }
    
}

struct NodeBlockquotePreviews: PreviewProvider {
    
    static var previews: some View {
        NodeBlockquote(content: [
            .text(NodeText(text: "This is an example text for this blockquote prose element.")),
        ])
        .render()
        .padding()
    }
    
}

#endif
