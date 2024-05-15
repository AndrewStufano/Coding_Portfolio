//
//  FruitList.swift
//  Lion Spell
//
//  Created by Dew Jackson on 8/31/23.
//

import SwiftUI

struct BuiltWordsList:View{
    @EnvironmentObject var scrambleManager:ScrambleManager
    let myList:[String]
    var body: some View {
//        Rectangle()
//            .fill(Color.red)
//            .frame(height: 40)
        ScrollView(.horizontal){
            HStack{
                ForEach(myList,id: \.self){item in
                Text(item)
                }
            }
        }
    }
}

struct BuiltWordsList_Previews: PreviewProvider {
    static var previews: some View {
        BuiltWordsList(myList: [])
            .environmentObject(ScrambleManager())
    }
}
