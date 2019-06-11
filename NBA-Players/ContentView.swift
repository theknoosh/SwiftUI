//
//  ContentView.swift
//  NBA-Players
//
//  Created by DARRELL A PAYNE on 6/9/19.
//  Copyright © 2019 DARRELL A PAYNE. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack {
            Image("gs").resizable().frame(height:250)
            Image("steph").clipShape(Circle())
                .background(Circle().foregroundColor(.white))
                .overlay(Circle()
                    .stroke(Color.white, lineWidth: 4))
                .shadow(radius: 15)
                .offset(x: 0, y: -90)
                .padding(.bottom, -90)
            Text("Steph Curry")
            .font(.system(size: 50))
            .fontWeight(.bold)
            StatTextView(statName: "Age", statValue: "24").padding(.bottom, -10)
            StatTextView(statName: "Height", statValue: "6' 3\"").padding(.bottom, -10)
            StatTextView(statName: "Weight", statValue: "190lbs")
            Spacer()
            }.edgesIgnoringSafeArea(.top)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
