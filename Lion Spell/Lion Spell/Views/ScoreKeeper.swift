//
//  ScoreKeeper.swift
//  Lion Spell
//
//  Created by Dew Jackson on 8/31/23.
//

import SwiftUI

struct ScoreKeeper:View{
    @EnvironmentObject var scrambleManager:ScrambleManager
    let myScore:Int
    var body: some View{
        HStack{
                Text(String(myScore))
                .font(.title)
            
        }
    }
}

struct ScoreKeeper_Previews: PreviewProvider {
    static var previews: some View {
        ScoreKeeper(myScore:0)
         .environmentObject(ScrambleManager())
    }
}
