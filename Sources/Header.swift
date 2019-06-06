//
//  Header.swift
//  Header-iOS
//
//  Created by Loïc GRIFFIE on 06/06/2019.
//  Copyright © 2019 Move Upwards. All rights reserved.
//

import SwiftUI

public struct Header : View {
    let title: String
    let titleColor: Color
    let spacing: Length
    let detail: String
    let detailColor: Color
    let textAlignment: HAlignment
    
    public init(title: String = "",
                titleColor: Color = .primary,
                spacing: Length = 8,
                detail: String = "",
                detailColor: Color = .secondary,
                textAlignment: HAlignment = .leading) {
        self.title = title
        self.titleColor  = titleColor
        self.spacing = spacing
        self.detail = detail
        self.detailColor = detailColor
        self.textAlignment = textAlignment
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: spacing) {
            Text(title)
                .fontWeight(.regular)
                .foregroundColor(titleColor)
                .font(.title)
                .multilineTextAlignment(textAlignment)
            Text(detail)
                .fontWeight(.semibold)
                .lineLimit(Int.max)
                .foregroundColor(detailColor)
                .font(.body)
                .multilineTextAlignment(textAlignment)
        }
    }
}

#if DEBUG
struct Header_Previews : PreviewProvider {
    static var previews: some View {
        HStack {
            Header(title: "My title",
                     titleColor: .orange,
                     detail: "My subtitle to shown in my custom header. My subtitle to shown in my custom header.",
                     detailColor: .red)
        }
    }
}
#endif
