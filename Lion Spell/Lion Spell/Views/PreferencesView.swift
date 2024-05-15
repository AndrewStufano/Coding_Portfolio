//
//  PreferencesView.swift
//  Lion Spell
//
//  Created by Dew Jackson on 9/11/23.
//

import SwiftUI

struct PreferencesView: View {
    @EnvironmentObject var scrambleManager:ScrambleManager
    @State private var selectedLanguage:selectLanguage = .english
    @State private var selectedDifficulty:problemSize = .problem5
    @Environment(\.dismiss) private var dismiss
    let myText:String
    let myText2:String
    let myText3:String
    var body: some View {
        Form {
            Button(myText3){
                dismiss()
            }
                Section(header: Text(myText)){
                    Picker("",selection: $selectedLanguage  ){
                        ForEach(selectLanguage.allCases){language in
                            Text(language.rawValue.capitalized)
                            
                        }
                        
                    }
                    .pickerStyle(.segmented)
                    
                }
                Section(header: Text(myText2)){
                    Picker("",selection: $selectedDifficulty  ){
                        ForEach(problemSize.allCases){problem in
                            Text(problem.rawValue.capitalized)
                            
                        }
                        
                    }
                    .pickerStyle(.segmented)
                    
                }
            }
        
    }
    
    struct PreferencesView_Previews: PreviewProvider {
        static var previews: some View {
            PreferencesView(myText: "Language ",myText2: "Difficulty",myText3: "Dismiss")
                .environmentObject(ScrambleManager())
        }
    }
    
}
