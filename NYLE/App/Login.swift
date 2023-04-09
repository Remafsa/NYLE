//
//  Login.swift
//  NYLE
//
//  Created by Rema Alnssiry on 06/04/2023.
//

import SwiftUI

struct Login: View {
    // MARK: - PROPERTY
    
    @State private var phoneNumber: String = ""
    @State private var password: String = ""
    @State private var IDNumber: String = ""
    @State var showPassword: Bool = false
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        
        VStack{
            VStack(alignment: .trailing, spacing: 20) {
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
            
            Button(action: {}){
                Text("تسجيل دخول")
                    .font(Font.custom("Tajawal-Bold", size: 18))
                    .foregroundColor(.white)
                    .modifier(ButtonStyle(buttonHeight: 60, buttonColor: Color("DarkBlue"), buttonRadius: 10))
                
            } //: BUTTON
            .padding(.bottom, 170)
            .padding(.horizontal, 35)
            
            SignUpLinkView()
        }
        
    }
    
    
    struct Login_Previews: PreviewProvider {
        static var previews: some View {
            Login()
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

