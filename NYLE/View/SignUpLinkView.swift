//
//  SignUpLinkView.swift
//  NYLE
//
//  Created by Shoug. on 09/04/2023.
//

import SwiftUI

struct SignUpLinkView: View {
    // MARK: - PROPERTY
    
   @AppStorage("isOnboarding") var isOnboarding: Bool?
    @State private var isShowingLogin: Bool = true
    
    // MARK: - BODY
    
    var body: some View {
       
        HStack(alignment: .center) {
           
      
            Button(action: {
                  
                    isOnboarding = true
                },
                       label: {
                    Text("سجل الآن")
                        .fontWeight(.bold)
                        .foregroundColor(Color("Green"))
                        .font(.system(size: 15))
                        .padding(.leading, 30)
                NavigationLink("سجل الان", destination: AccountType(titleOne: "هل أنت", titleTwo: "اختر نوع حسابك"))
                    //                        .sheet(isPresented: $isShowingLogin) {
                    //                            AccountType(titleOne: "هل أنت", titleTwo: "اختر نوع حسابك")
                    // }
                })
                
                Text("ليس لديك حساب؟ ")
                    .foregroundColor(Color("DarkBlue"))
                    .font(.system(size: 15))
                    .multilineTextAlignment(.center)
                    .padding(.trailing, 80)
            }
    }
    }


// MARK: - PREVIEW

struct SignUpLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpLinkView()
        
    }
}
