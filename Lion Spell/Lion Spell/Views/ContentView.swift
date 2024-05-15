//
//  ContentView.swift
//  Lion Spell
//
//  Created by Dew Jackson on 8/25/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var scrambleManager : ScrambleManager
    var body: some View {
        ZStack {
            Color.blue
            VStack(alignment: .center, spacing: 10) {
                Group{
                    Title(imageName:"LionSpell")
                    Spacer()
                }
                
                Group{
                    BuiltWordsList(myList:scrambleManager.wordsConstructedList)
                }
                Group{
                    VStack(alignment: .center, spacing: 100){
                        ScoreKeeper(myScore: scrambleManager.scoreKeeper)
                    }
                }
                
                Group{
                    LetterConnectDisplay(letterConnect: scrambleManager.wordConstruct)
                }
               
                Group{
                    LetterButtonButton(ButtonCount:5, MyText: scrambleManager.randomWord)
                }
                
                Group{
                    HStack{
                        DeletePrevLetter(isVisible: scrambleManager.isDeleteButtonVisible, myDelete: "Delete")
                        SubmitFormedWord(mySubmit: "Submit",isVisible: scrambleManager.isSubmitButtonVisible)
                    }
                }
                
                Group {
                    HStack{
                        ShuffleButton(myShuffle: "Shuffle")
                        NewGameButton(NewGame: "New Game")
                    }
                }
                Group{
                    HStack{
                        SettingsButton(mySettings: "Preferences")
                        HintButton(myHint: "Hint ?")
                    }

                }
                
        }
            
    }
}
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .environmentObject(ScrambleManager())
        }
    }
    
    
}


