//
//  SwiftUIView.swift
//  Lion Spell
//
//  Created by Dew Jackson on 9/3/23.
//

import SwiftUI

struct APPTITLE: View {
    let myAPPTitle:String
    var body: some View {
        Text(myAPPTitle)
            
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        APPTITLE(myAPPTitle: "")
    }
}
