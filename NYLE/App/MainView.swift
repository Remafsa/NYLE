//
//  MainView.swift
//  NYLE
//
//  Created by Rema Alnssiry on 10/04/2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            PofileView()
                .tabItem{
                    Image(systemName: "person.crop.circle")
                    Text("الحساب الشخصي")
                }

            AgriculturalLandView()
                .tabItem{
                    Image(systemName:"tree")
                    Text("الأراضي الزراعية")
                }
            AgriculturalEquipmentView()
                .tabItem{
                    Image(systemName: "engine.combustion")
                    Text("المعدات الزراعية")
                    
                }
        }
        
    
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
