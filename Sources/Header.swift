//
//  Header.swift
//  Header-iOS
//
//  Created by Loïc GRIFFIE on 06/06/2019.
//  Copyright © 2019 Move Upwards. All rights reserved.
//

import SwiftUI

struct Header : View {
    var title: String = ""
    var titleColor: Color = .primary
    var spacing: Length = 8
    var detail: String = ""
    var detailColor: Color = .secondary
    var textAlignment: HAlignment = .leading
    
    var body: some View {
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
