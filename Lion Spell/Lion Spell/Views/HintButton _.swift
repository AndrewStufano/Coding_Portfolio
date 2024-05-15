//
//  HintButton ?.swift
//  Lion Spell
//
//  Created by Dew Jackson on 9/4/23.
//

import SwiftUI

struct HintButton: View {
    @EnvironmentObject var scrambleManager:ScrambleManager
    @State private var isSheetPresented = false
    let myHint:String
    var body: some View {
        HStack{
            Button(action: {isSheetPresented = true}){
                    Text(myHint)
            }
            .foregroundColor(.blue)
            .font(.title)
            .buttonStyle(.borderedProminent)
            .tint(.white)
            .padding()
            .sheet(isPresented: $isSheetPresented){
                HintView(myText: "Dismiss", myText2: "Summary", myText3: "WORD OF LENGTH 5", myText4: "WORD OF LENGTH 6", myText5: "WORD OF LENGTH 7")
            }
        }
    }
    
    struct ShuffleButton_Previews: PreviewProvider {
        static var previews: some View {
            HintButton(myHint:"")
                .environmentObject(ScrambleManager())
        }
    }
}
