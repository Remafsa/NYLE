//
//  Login.swift
//  NYLE
//
//  Created by Rema Alnssiry on 06/04/2023.
//

import SwiftUI
import FirebaseAuth

struct LoginView: View {
    // MARK: - PROPERTY
    let didCompleteLoginProcess: () -> ()
    @State private var email: String = ""
    @State private var password: String = ""
    @State var showPassword: Bool = false
    @State var signInProcessing: Bool = false
    @State private var signInErrorMessag: String = ""
    @State private var errorMessage: String = ""
    @State private var isLoggedIn = false
    
    @EnvironmentObject private var model: Model
    
    private var isFormValid: Bool {
        !email.isEmptyOrWhiteSpace && !password.isEmptyOrWhiteSpace
    }
    
    private func login() {
        
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let error = error {
                
                print("Login error: \(error.localizedDescription)")
                
            } else {
                // User logged in successfully
                print("User logged in successfully")
                isLoggedIn = true
                
            }
        }
    }

        // MARK: - BODY
    
    var body: some View {
        NavigationView {
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
                            
                            TextField("أدخل البريد الإلكتروني", text: $email)
                                .multilineTextAlignment(.trailing)
                                .frame(height: 50)
                                .textFieldStyle(PlainTextFieldStyle())
                                .padding([.horizontal], 10)
                                .cornerRadius(16)
                                .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color("Stroke-Grey")))
                                .background(RoundedRectangle(cornerRadius: 16).fill(Color("Grey")))
                                .autocapitalization(.none)
                                .disableAutocorrection(true)
                            
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
                                        .autocapitalization(.none)
                                        .disableAutocorrection(true)
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
                
                Button {
                         login()
          
                } label: {
                            Text("تسجيل دخول")
                                .font(Font.custom("Tajawal-Bold", size: 18))
                                .foregroundColor(.white)
                                .modifier(ButtonStyle(buttonHeight: 60, buttonColor: Color("DarkBlue"), buttonRadius: 10))
                                .padding(.horizontal, 35)
                                .padding(.top, 30)
                }// button
                NavigationLink( destination: MainView(), isActive: $isLoggedIn, label: { EmptyView() } ) .hidden()
                .disabled(!isFormValid) // The user can't login if one of the registration fields is empty 
                .padding(.horizontal, 35)
                .padding(.top, 30)
                Spacer()
             
                // Sign Up code
                NavigationLink(destination:  AccountType(titleOne: "هل أنت", titleTwo: "اختر نوع حسابك"), label: {
                    Text("سجل الآن")
                        .foregroundColor(Color("Green"))
                        .font(.system(size: 15))
                        .padding(.leading, 15)
                    Text("ليس لديك حساب؟ ")
                        .foregroundColor(Color("DarkBlue"))
                        .font(.system(size: 15))
                        .padding(.horizontal)
                } //: LABEL
                ) //: NAVOGATIONLINK
                Text(errorMessage)
            } //: VSTACK
            .navigationTitle("")
            
        } //: NAVIGATION
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(didCompleteLoginProcess: {
            
        })
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


