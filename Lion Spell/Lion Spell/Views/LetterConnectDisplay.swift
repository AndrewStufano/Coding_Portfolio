//
//  LetterConnectDisplay.swift
//  Lion Spell
//
//  Created by Dew Jackson on 9/4/23.
//

import SwiftUI

struct LetterConnectDisplay: View {
    @EnvironmentObject var buttonManager:ScrambleManager
    let letterConnect:[String]
    var body: some View {
        HStack{
            ForEach(0..<letterConnect.count,id:\.self){index in
                Text(letterConnect[index])
            }
        }
    }
}

struct LetterConnectDisplay_Previews: PreviewProvider {
    static var previews: some View {
        LetterConnectDisplay(letterConnect: [""])
            .environmentObject(ScrambleManager())
    }
}
