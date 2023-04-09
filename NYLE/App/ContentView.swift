//
//  ContentView.swift
//  NYLE
//
//  Created by Rema Alnssiry on 06/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 110)
            
            Text("تربتنا ثريّة .. وأراضينا سخيّة")
                .foregroundColor(Color("Green"))
                .font(.system(size: 16))
                .frame(alignment: .center)
        }
        .padding(.bottom, 50)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
           
    }
}
