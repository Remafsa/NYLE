//
//  AgriculturalLandView.swift
//  NYLE
//
//  Created by Rema Alnssiry on 10/04/2023.
//

import SwiftUI

struct AgriculturalLandView: View {
    var body: some View {
        ZStack {
            VStack (spacing: 0){
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                Spacer()
                FooterView()
                    .padding(.horizontal)
            }
        }//VSTACK
        .ignoresSafeArea(.all, edges: .top)
        .background(colorBackground.ignoresSafeArea(.all, edges: .all))

        
    }
}

struct AgriculturalLandView_Previews: PreviewProvider {
    static var previews: some View {
        AgriculturalLandView()
            .background(colorBackground)

    }
}
