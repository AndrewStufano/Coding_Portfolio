//
//  NewGameButton.swift
//  Lion Spell
//
//  Created by Dew Jackson on 9/4/23.
//

import SwiftUI

import SwiftUI

struct NewGameButton: View {
    @EnvironmentObject var scrambleManager:ScrambleManager
    let NewGame:String
    var body: some View {
        HStack{
            Button(action: {scrambleManager.resetGame()}){
                    Text(NewGame)
            }
            .foregroundColor(.blue)
            .font(.title)
            .buttonStyle(.borderedProminent)
            .tint(.white)
            .padding()
        }
    }
    
    struct NewGameButton_Previews: PreviewProvider {
        static var previews: some View {
            NewGameButton(NewGame:"")
                .environmentObject(ScrambleManager())
        }
    }
}
