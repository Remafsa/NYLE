//
//  OwnerSignUpButton.swift
//  NYLE
//
//  Created by Shoug. on 09/04/2023.
//

import SwiftUI

struct OwnerSignUpButton: View {
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
                    
                    Text("عند التسجيل إلى حساب المالك، سوف تتمكن من إضافة أرض أو معدات زراعية للبيع أو الاستئجار.")
                        .font(.system(size: 18))
                        .fontWeight(.light)
                        .foregroundColor(Color("DarkBlue"))
                        .multilineTextAlignment(.trailing)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Spacer()
                    
                    VStack(alignment: .trailing, spacing: 10) {
                        Text("مالك")
                            .font(.body)
                            .fontWeight(.regular)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                        
                        Image("owner-image")
                            .font(.title)
                            .foregroundColor(.black)
                            .padding(.horizontal, 15)
                        
                    } //: VSTACK
                }) //: BUTTON
            } //: HSTACK
        } //: ZSTACK
    }
}

struct OwnerSignUpButton_Previews: PreviewProvider {
    static var previews: some View {
        OwnerSignUpButton()
    }
}
