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
                 
                VStack{
                    FarmerSignUpButton()
                } //: VSTACK
                
                VStack {
                    OwnerSignUpButton()
                    Spacer()
                } //: VSTACK
                
            } //: VSTACK
            .padding(.vertical, 130)
    }
}

struct AccountType_Previews: PreviewProvider {
    static var previews: some View {
        AccountType(titleOne: "هل أنت", titleTwo: "اختر نوع حسابك")
    }
}
