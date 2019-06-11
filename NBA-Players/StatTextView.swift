//
//  StatTextView.swift
//  NBA-Players
//
//  Created by DARRELL A PAYNE on 6/10/19.
//  Copyright © 2019 DARRELL A PAYNE. All rights reserved.
//

import SwiftUI

struct StatTextView : View {
    
    var statName:String = "Age"
    var statValue:String = "29"
    
    var body: some View {
        HStack(alignment: .center) {
            Text(statName + ":")
            .font(.system(size: 30))
            .fontWeight(.bold)
            .padding(.leading, 30)
            Text(statValue)
            .font(.system(size: 24))
            .fontWeight(.light)
            Spacer()
        }
    }
}

#if DEBUG
struct StatTextView_Previews : PreviewProvider {
    static var previews: some View {
        StatTextView()
    }
}
#endif
