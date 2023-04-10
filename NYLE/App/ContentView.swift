//
//  ContentView.swift
//  NYLE
//
//  Created by Rema Alnssiry on 06/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
   
       AccountType(titleOne: "هل أنت ", titleTwo: "إختر نوع حسابك")
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
           
    }
}
