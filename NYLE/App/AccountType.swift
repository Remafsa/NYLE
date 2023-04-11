//
//  AccountType.swift
//  NYLE
//
//  Created by Rema Alnssiry on 06/04/2023.
//

import SwiftUI

struct AccountType: View {
    // MARK: - PROPERTY
    
    var titleOne: String
    var titleTwo: String
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            VStack (alignment: .trailing, spacing: 12) {
                Text(titleOne)
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(Color("Green"))
                    .padding(.trailing, 20)
                
                Text(titleTwo)
                    .font(.title2)
                    .fontWeight(.light)
                    .foregroundColor(Color("DarkBlue"))
                    .padding([.bottom, .trailing], 20)
                
                
                NavigationLink(
                    destination: FarmerSignUpView()){
                        FarmerSignUpButton()
                    } //: NAVIGATION LINK
                    .navigationTitle("")
                
                NavigationLink(
                    destination: OwnerSignUp()){
                        OwnerSignUpButton()
                        Spacer()
                        
                    } //: NAVIGATION LINK
                    .navigationTitle("")
            } //: VSTACK
            .padding(.vertical, 130)
            
        } //: NAVIGATION
    }
}

struct AccountType_Previews: PreviewProvider {
    static var previews: some View {
        AccountType(titleOne: "هل أنت", titleTwo: "اختر نوع حسابك")
    }
}
