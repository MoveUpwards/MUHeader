//
//  Header.swift
//  Header-iOS
//
//  Created by Loïc GRIFFIE on 06/06/2019.
//  Copyright © 2019 Move Upwards. All rights reserved.
//

import SwiftUI

public struct Header : View {
    public var title: String = ""
    public var titleColor: Color = .primary
    public var spacing: Length = 8
    public var detail: String = ""
    public var detailColor: Color = .secondary
    public var textAlignment: HAlignment = .leading
    
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
