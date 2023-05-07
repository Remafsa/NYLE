//
//  LandDetailView.swift
//  NYLE
//
//  Created by Rema Alnssiry on 01/05/2023.
//

import SwiftUI

struct LandDetailView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 5, content: {
                // NAVBAR
                NavigationBarDetailView()
                  .padding(.horizontal)
                  .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                
            })//VSTACK
            .ignoresSafeArea(.all, edges: .all)
        }//Scroll
        
    }
}

struct LandDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LandDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
            .background(Color.gray)
    }
}
