//
//  ScrambleProblem.swift
//  Lion Spell
//
//  Created by Dew Jackson on 8/29/23.
//

import Foundation

struct ScrambleSingle:Identifiable {
    let RandomLetter:[String]
    let PossibleWords:Int
    let PossiblePoints:Int
    let PossibleStartingLetter:Int
    let word5:Int
    let word6:Int
    let word7:Int
    var languageWords:[String]
    let id = UUID()
    
    init(randomWord:[String],shuffledLetter:[String],selectedLanguage:selectLanguage,word5:Int,word6:Int,word7:Int){
        
        self.languageWords = selectedLanguage.words
        
        var randomLetters = [String]()
        var possibleWords = 0
        var possiblePoints = 0
        var possibleStartingLetter = 0
        var wordLength5 = 0
        var wordLength6 = 0
        var wordLength7 = 0
        if let randomWord = languageWords.randomElement(){
            for randomLetter in randomWord{
                randomLetters.append(String(randomLetter))
            }
            
            let randomWord = languageWords.randomElement()!
            randomLetters.append(randomWord)
            
            
            for word in languageWords{
                var remainingLetters = Array(randomWord)
                
                for letter in word {
                    if let index = remainingLetters.firstIndex(of: letter){
                        remainingLetters.remove(at: index)
                    }
                    if remainingLetters.isEmpty{
                        possibleWords += 1
                        if Set(word) == Set(randomWord){
                            possibleStartingLetter += 1
                        }
                        possiblePoints += word.count
                    }
                }
            }
            wordLength5 = languageWords.filter{$0.count == 5}.count
            wordLength6 = languageWords.filter{$0.count == 6}.count
            wordLength7 = languageWords.filter{$0.count == 7}.count
            
        }
        
        self.RandomLetter = randomLetters
        self.PossibleWords = possibleWords
        self.PossiblePoints = possiblePoints
        self.PossibleStartingLetter = possibleStartingLetter
        self.word5 = wordLength5
        self.word6 = wordLength6
        self.word7 = wordLength7
        
    }
    
}
    
    
    
    enum problemSize:String, CaseIterable, Identifiable {
        case problem5, problem6, problem7
        var id: RawValue {rawValue}
    }
    
    enum selectLanguage:String, CaseIterable, Identifiable {
        case english,italian,german,french
        
        var words: [String]{
            switch self {
            case .english:return Words.englishWords
            case .german:return Words.germanWords
            case .french:return Words.frenchWords
            case .italian:return Words.italianWords
            }
        }
        var id: RawValue {rawValue}
    }
    
    
    struct Preferences {
        
        var problem5:problemSize = .problem5
        var problem6:problemSize = .problem6
        var problem:problemSize = .problem7
        var selectEnglish: selectLanguage = .english
        var selectItalian: selectLanguage = .italian
        var selectGerman: selectLanguage = .german
        var selectFrench: selectLanguage = .french
        
        var selectLanguage:selectLanguage = .english
    }
    
    
    
    struct UnscrambleWord:ScrambleProblem{
        let initialWord: ScrambleSingle
        
        init(selectedLanguage: selectLanguage){
            let selecetedLanguageChoice:selectLanguage
            switch selectedLanguage {
            case .english:
                selecetedLanguageChoice = .english
            case .italian:
                selecetedLanguageChoice = .italian
            case .german:
                selecetedLanguageChoice = .german
            case .french:
                selecetedLanguageChoice = .french
            }
            initialWord = ScrambleSingle(randomWord: [], shuffledLetter: [], selectedLanguage: selecetedLanguageChoice,word5: 0,word6: 0,word7: 0)
        }
    }
    
    
protocol ScrambleProblem{
    var initialWord:ScrambleSingle {get}
    }
    

