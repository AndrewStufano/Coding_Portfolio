//
//  SettingsButton.swift
//  Lion Spell
//
//  Created by Dew Jackson on 9/4/23.
//

import SwiftUI

struct SettingsButton: View {
    @EnvironmentObject var scrambleManager:ScrambleManager
    @State private var isSheetPresented = false
    let mySettings:String
    var body: some View {
        HStack{
            Button(action: {isSheetPresented = true}){
                Text(mySettings)
            }
            .foregroundColor(.blue)
            .font(.title)
            .buttonStyle(.borderedProminent)
            .tint(.white)
            .padding()
            .sheet(isPresented: $isSheetPresented){
                PreferencesView(myText:"Language", myText2: "Difficulty", myText3: "Dismiss")
            }
        }
    }
    
    struct SettingsButton_Previews: PreviewProvider {
        static var previews: some View {
            SettingsButton(mySettings:"")
                .environmentObject(ScrambleManager())
        }
    }
}

