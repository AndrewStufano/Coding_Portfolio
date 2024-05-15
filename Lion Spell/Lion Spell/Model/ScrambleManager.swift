//
//  ScrambleManager.swift
//  Lion Spell
//
//  Created by Dew Jackson on 8/30/23.
//

import Foundation

class ScrambleManager: ObservableObject {
    let unscramble:ScrambleProblem = UnscrambleWord(selectedLanguage: .english)
    
    @Published var scoreKeeper:Int = 0
    @Published var wordsConstructedList:[String] = []
    @Published var wordConstruct:[String] = []
    @Published var wordBank:[String] = Words.englishWords
    
    
    var randomWord:[String]{unscramble.initialWord.RandomLetter}
    var PossibleWords:Int{unscramble.initialWord.PossibleWords}
    var PossiblePoints:Int{unscramble.initialWord.PossiblePoints}
    var PossibleStartingLetter:Int{unscramble.initialWord.PossibleStartingLetter}
    
    var wordOF5:Int{unscramble.initialWord.word5}
    var wordOF6:Int{unscramble.initialWord.word6}
    var wordOF7:Int{unscramble.initialWord.word7}
    
    @Published var preferences = Preferences()
    @Published var shuffledLetterList:[String] = []
    @Published var newLetters:[String] = []
    
    
    

    var isSubmitButtonVisible:Bool{
        wordBank.contains(wordConstruct) ||
        !wordConstruct.isEmpty
    }

var isDeleteButtonVisible:Bool {
    !wordConstruct.isEmpty}


func submitButton() {
    let wordFormed = wordConstruct.joined()
    wordsConstructedList.append(wordFormed)
    scoreKeeper += wordConstruct.count
    if wordConstruct.contains(randomWord){
        scoreKeeper += 10
    }
    wordConstruct.removeAll()
    }

    
    func addLetter(_ letter:String){
        wordConstruct.append(letter)
    }
    
    
    func deleteButton(){
        if !wordConstruct.isEmpty{
            wordConstruct.removeLast()
        }
    }
    
    
    func resetGame(){
        scoreKeeper = 0
        wordConstruct.removeAll()
        wordsConstructedList.removeAll()
        newLetters = randomWord
        }
    
    //tried but the help was lack luster
    func shuffleRandomLetters(){

    }
    
    
}


