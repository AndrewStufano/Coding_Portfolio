//
//  SubmitFormedWord.swift
//  Lion Spell
//
//  Created by Dew Jackson on 9/4/23.
//

import SwiftUI

struct SubmitFormedWord: View {
    @EnvironmentObject var scrambleManager:ScrambleManager
    let mySubmit: String
    let isVisible:Bool
    var body: some View {
        Button(action: {
            scrambleManager.submitButton()
        }) {
            Text(mySubmit)
        }
        .font(.title)
        .buttonStyle(.borderedProminent)
        .tint(.green)
        .padding()
        .opacity(isVisible ? 1.0 : 0.0)
    }
}

    
struct SubmitFormedWord_Previews: PreviewProvider {
    static var previews: some View {
        SubmitFormedWord(mySubmit:"", isVisible:true)
            .environmentObject(ScrambleManager())
    }
}

