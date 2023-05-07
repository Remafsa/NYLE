//
//  AgriculturalEquipmentView.swift
//  NYLE
//
//  Created by Rema Alnssiry on 10/04/2023.
//

import SwiftUI

struct AgriculturalEquipmentView: View {
    // MARK: - PROPERTY

    
    // MARK: - BODY

    var body: some View {
        ZStack {
            VStack (spacing: 0){
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 0) {
                        //.frame(height: UIScreen.main.bounds.width / 1.475) // This will fix the layout rendering priority issue by using the screen's aspect ratio.
                        //.padding(.vertical, 20)
                        
                        CategoryGridView()
                        TitleView(title: "المعدات")
                        FooterView()
                            .padding(.horizontal)
                    } //: VSTACK
                }) //: SCROLL
            }//VSTACK
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))

        }//ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct AgriculturalEquipmentView_Previews: PreviewProvider {
    static var previews: some View {
        AgriculturalEquipmentView()
    }
}
