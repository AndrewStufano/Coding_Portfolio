//
//  Title.swift
//  Lion Spell
//
//  Created by Dew Jackson on 8/31/23.
//

import SwiftUI

struct Title: View {
    let imageName : String
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
             
    }
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title(imageName: "filename")
        .environmentObject(ScrambleManager())
        
    }
}
