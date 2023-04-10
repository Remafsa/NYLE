//
//  Login.swift
//  NYLE
//
//  Created by Rema Alnssiry on 06/04/2023.
//

import SwiftUI

struct LoginView: View {
    // MARK: - PROPERTY
    
    @State private var phoneNumber: String = ""
    @State private var password: String = ""
    @State private var IDNumber: String = ""
    @State var showPassword: Bool = false
  //  @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        
        VStack{
            VStack(alignment: .trailing, spacing: 20) {
                // Top Section
                VStack( spacing: 2) {
                    Text("مرحباً، سجل دخولك إلى")
                        .padding([.top, .trailing], 8)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .font(.title)
                        .foregroundColor(Color("DarkBlue"))
                    Text("نَيْل")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding([.top, .bottom, .trailing], 8)
                        .foregroundColor(Color("Green"))
                } //: VSTACK
            } //: VSTACK
            .padding(.top,200)
            VStack{
                // Middle Section
                Form {
                    VStack(spacing: 9) {
                        
                        TextField("أدخل رقم الجوال", text: $phoneNumber)
                            .multilineTextAlignment(.trailing)
                            .frame(height: 50)
                            .textFieldStyle(PlainTextFieldStyle())
                            .padding([.horizontal], 10)
                            .cornerRadius(16)
                            .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color("Stroke-Grey")))
                            .background(RoundedRectangle(cornerRadius: 16).fill(Color("Grey")))
                        
                        HStack {
                            ZStack {
                                SecureField("أدخل الرمز السري", text: $password)
                                    .multilineTextAlignment(.trailing)
                                    .frame(height: 50)
                                    .textFieldStyle(PlainTextFieldStyle())
                                    .padding([.horizontal], 10)
                                    .cornerRadius(16)
                                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color("Stroke-Grey")))
                                    .background(RoundedRectangle(cornerRadius: 16).fill(Color("Grey")))
                                Button {
                                    showPassword.toggle()
                                }
                            label: {
                                Image(systemName: showPassword ? "eye.slash" : "eye")
                                    .foregroundColor(.gray) // how to change image based in a State variable
                                    .padding(.trailing, 255)
                            } //: LABEL
                            }
                        } //: HSTACK
                    } //: VSTACK
                } //: FORM
            } //: VSTACK
            .scrollContentBackground(.hidden)
            .background(Color.white)
            
            // Bottom Section
            
            // Sign in button code in SignInButtonView()
            SignInButtonView()
         
            // Sign in button code in SignUpLinkView()
            SignUpLinkView()
        }
        
    }
    
    
    struct Login_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
    
    struct ButtonStyle: ViewModifier {
        
        // MARK: - PROPERTIES
        
        let buttonHeight: CGFloat
        let buttonColor: Color
        let buttonRadius: CGFloat
        
        func body(content: Content) -> some View {
            content
                .frame(maxWidth: .infinity)
                .frame(height: buttonHeight)
                .background(buttonColor)
                .cornerRadius(buttonRadius)
        }
    }
}

