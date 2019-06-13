//
//  PlayerRow.swift
//  NBA-Players
//
//  Created by DARRELL A PAYNE on 6/11/19.
//  Copyright © 2019 DARRELL A PAYNE. All rights reserved.
//

import SwiftUI

struct PlayerRow : View {
    
    var player: Player
    
    var body: some View {
        HStack {
            Image(player.imageName).resizable()
                .frame(width: 50.0, height: 50.0)
                .clipShape(Circle())
                .background(Circle()).foregroundColor(player.team.color)
                .padding(.leading, 25)
            Text(player.name)
                .font(.system(size: 25.0))
                .fontWeight(.bold)
                .padding(.leading, 15)
            Spacer()
        }
    }
}

#if DEBUG
struct PlayerRow_Previews : PreviewProvider {
    static var previews: some View {
        VStack {
            PlayerRow(player: players[0]).previewLayout(.fixed(width: 500, height: 100))
            PlayerRow(player: players[1]).previewLayout(.fixed(width: 500, height: 100))
            PlayerRow(player: players[2]).previewLayout(.fixed(width: 500, height: 100))
            PlayerRow(player: players[3]).previewLayout(.fixed(width: 500, height: 100))
            PlayerRow(player: players[4]).previewLayout(.fixed(width: 500, height: 100))
        }
    }
}
#endif
