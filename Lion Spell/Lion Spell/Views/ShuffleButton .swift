//
//  ShuffleButton .swift
//  Lion Spell
//
//  Created by Dew Jackson on 9/4/23.
//

import SwiftUI

struct ShuffleButton: View {
    @EnvironmentObject var scrambleManager:ScrambleManager
    let myShuffle:String
    var body: some View {
        HStack{
            Button(action: {}){
                    Text(myShuffle)
            }
            .foregroundColor(.blue)
            .font(.title)
            .buttonStyle(.borderedProminent)
            .tint(.white)
            .padding()
        }
    }
    
    struct ShuffleButton_Previews: PreviewProvider {
        static var previews: some View {
            ShuffleButton(myShuffle:"")
                .environmentObject(ScrambleManager())
        }
    }
}
