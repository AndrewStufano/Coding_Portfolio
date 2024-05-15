//
//  HintView.swift
//  Lion Spell
//
//  Created by Dew Jackson on 9/12/23.
//

import SwiftUI

struct HintView: View {
    @EnvironmentObject var scrambleManager:ScrambleManager
    let myText:String
    let myText2:String
    let myText3:String
    let myText4:String
    let myText5:String
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        Form{
            Button(myText){
                dismiss()
            }
            Section(header: Text(myText2)){
                Text("Possible Words: \(scrambleManager.PossibleWords)")
                Text("Possible Points: \(scrambleManager.PossiblePoints)")
                Text("Number of Paragrams: \(scrambleManager.PossibleStartingLetter)")
                
            }
            Section(header: Text(myText3)){
                Text("\(scrambleManager.wordOF5)")
                }
            Section(header: Text(myText4)){
                Text("\(scrambleManager.wordOF6)")
                
            }
            Section(header: Text(myText5)){
                Text("\(scrambleManager.wordOF7)")
                
            }
            
            
        }
        
    }
    
    
    struct HintView_Previews: PreviewProvider {
        static var previews: some View {
            HintView(myText: "Dismiss",myText2: "Summary",myText3: "WORDS OF LENGTH 4",myText4: "WORDS OF LENGTH 5", myText5:"WORDS OF LENGTH 6")
                .environmentObject(ScrambleManager())
        }
    }
}
