//
//  MyButton.swift
//  Lion Spell
//
//  Created by Dew Jackson on 8/31/23.
//

import SwiftUI

struct LetterButtonButton: View {
@EnvironmentObject var scrambleManager: ScrambleManager
let ButtonCount: Int
let MyText: [String]
var body: some View {
        HStack {
            ForEach(0..<ButtonCount, id: \.self) { index in
            Button(action: {
                let tappedLetter = MyText[index]
                scrambleManager.addLetter(tappedLetter)
                }) {
                      Text(MyText[index])            
                    
                }
                .foregroundColor(.blue)
                .font(.title)
                .buttonStyle(.borderedProminent)
                .tint(.white)
                .padding()
            }
        }
    }
}


struct LetterButtonButton_Previews: PreviewProvider {
    static var previews: some View {
        LetterButtonButton(ButtonCount:1, MyText:[""])
            .environmentObject(ScrambleManager())
    }
}
