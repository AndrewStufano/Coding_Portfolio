//
//  DeletePrevLetter.swift
//  Lion Spell
//
//  Created by Dew Jackson on 9/4/23.
//

import SwiftUI

struct DeletePrevLetter: View {
    @EnvironmentObject var scrambleManager:ScrambleManager
        let isVisible:Bool
    let myDelete:String
    var body: some View {
        HStack{
            Button(action: {scrambleManager.deleteButton()}){
                    Text(myDelete)
            }
                .font(.title)
                .buttonStyle(.borderedProminent)
                .tint(.red)
                .padding()
        }
        .opacity(isVisible ? 1.0 : 0.0)
    }
    
    struct DeletePrevLetter_Previews: PreviewProvider {
        static var previews: some View {
            DeletePrevLetter(isVisible: true, myDelete:"")
                .environmentObject(ScrambleManager())
        }
    }
}

