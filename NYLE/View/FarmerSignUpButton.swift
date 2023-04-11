//
//  FarmerSignUpButton.swift
//  NYLE
//
//  Created by Shoug. on 08/04/2023.
//
//
import SwiftUI

struct FarmerSignUpButton: View {
    // MARK: - PROPERTY
    
    // MARK: - BODY
    
    var body: some View {
            ZStack {
                CustomShapeView()
                HStack {
                    Button(action: {}, label: {
                        Image(systemName: "chevron.left")
                            .font(.title)
                            .foregroundColor(.black)
                            .padding(.horizontal, 15)
                        
                        Spacer()
                        
                        Text("عند التسجيل إلى حساب المزارع، سوف تتمكن من شراء أو استئجار أرض أو معدات زراعية.")
                            .font(.system(size: 18))
                            .fontWeight(.light)
                            .foregroundColor(Color("DarkBlue"))
                            .multilineTextAlignment(.trailing)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Spacer()
                        
                        VStack(alignment: .trailing, spacing: 10) {
                            Text("مزارع")
                                .font(.body)
                                .fontWeight(.regular)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 20)
                            
                            Image("farmer-image")
                                .font(.title)
                                .foregroundColor(.black)
                                .padding(.horizontal, 15)
                            
                     
                            
                        } //: VSTACK
                    }) //: BUTTON
                } //: HSTACK
            }  //: ZSTACK
    }
}

// MARK: - PREVIEW

struct FarmerSignUpButton_Previews: PreviewProvider {
    static var previews: some View {
        FarmerSignUpButton()
    }
}
