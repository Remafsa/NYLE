//
//  FarmerSignUpView.swift
//  NYLE
//
//  Created by Rema Alnssiry on 06/04/2023.
//

import SwiftUI
import FirebaseAuth
import FirebaseFirestore

struct FarmerSignUpView: View {
    
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var phoneNumber: String = ""
    @State private var password: String = ""
    @State private var idNumber: String = ""
    @State private var isSignedIn = false
    
    
    private var isFormValid: Bool {
        !firstName.isEmptyOrWhiteSpace && !lastName.isEmptyOrWhiteSpace && !email.isEmptyOrWhiteSpace && !phoneNumber.isEmptyOrWhiteSpace && !password.isEmptyOrWhiteSpace && !idNumber.isEmptyOrWhiteSpace
    }
    
  
    func signUp() {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            guard let user = authResult?.user, error == nil else {
                print("Error: \(error!.localizedDescription)")
                return
            }
            let userData = [
                "firstName": firstName,
                "lastName": lastName,
                "email": email,
                "idNumber": idNumber,
                "phoneNumber": phoneNumber,
                "password": password
            ]
            let db = Firestore.firestore()
            db.collection("Farmers").document(user.uid).setData(userData) { error in
                if let error = error {
                    print("Error adding user data: \(error.localizedDescription)")
                } else {
                    isSignedIn = true
                    print("User data added successfully!")
                }
            }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack{
                VStack(alignment: .trailing, spacing: 20){
                    VStack( spacing:2){
                        Text("سجل دخولك إلى ")
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .font(.title)
                            .foregroundColor(Color("DarkBlue"))
                        Text("حساب المزارع ")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .padding(.vertical, 8)
                            .foregroundColor(Color("Green"))
                    }
                    
                }
                .padding(.top,35)
                
                VStack{
                    Form {
                        VStack(spacing: 9){
                            Section(header: Text("الأسم الاول")
                                .foregroundColor(Color("DarkBlue"))
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                    
                            ) {
                                TextField("أسمك الأول", text: $firstName)
                                    .multilineTextAlignment(.trailing)
                                    .frame(height: 50)
                                    .textFieldStyle(PlainTextFieldStyle())
                                    .padding([.horizontal], 10)
                                    .cornerRadius(16)
                                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color("Stroke-Grey")))
                                    .background(RoundedRectangle(cornerRadius: 16).fill(Color("Grey")))
                                    .autocapitalization(.none)
                                    .disableAutocorrection(true)
                                
                            }// end of stack 1
                            
                        } // end of first section
                        VStack(spacing: 9){
                            Section(header: Text("الأسم الأخير")
                                .foregroundColor(Color("DarkBlue"))
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            ) {
                                
                                TextField("أسمك الأخير", text: $lastName)
                                    .multilineTextAlignment(.trailing)
                                    .frame(height: 50)
                                    .textFieldStyle(PlainTextFieldStyle())
                                    .padding([.horizontal], 10)
                                    .cornerRadius(16)
                                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color("Stroke-Grey")))
                                    .background(RoundedRectangle(cornerRadius: 16).fill(Color("Grey")))
                                    .autocapitalization(.none)
                                    .disableAutocorrection(true)
                            }//end of stack 2
                            
                        }// end of 2 section
                        VStack(spacing: 9){
                            Section(header: Text("الأيميل")
                                .foregroundColor(Color("DarkBlue"))
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            ) {
                                
                                TextField("exampleemil.com", text: $email)
                                    .multilineTextAlignment(.trailing)
                                    .frame(height: 50)
                                    .textFieldStyle(PlainTextFieldStyle())
                                    .padding([.horizontal], 10)
                                    .cornerRadius(16)
                                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color("Stroke-Grey")))
                                    .background(RoundedRectangle(cornerRadius: 16).fill(Color("Grey")))
                                    .autocapitalization(.none)
                                    .disableAutocorrection(true)
                            }//end of stack 3
                            
                        }// end of 3 section
                        VStack(spacing: 9){
                            Section(header: Text("رقم الجوال")
                                .foregroundColor(Color("DarkBlue"))
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            ) {
                                
                                TextField("05X XXX XXXX", text: $phoneNumber)
                                    .multilineTextAlignment(.trailing)
                                    .frame(height: 50)
                                    .textFieldStyle(PlainTextFieldStyle())
                                    .padding([.horizontal], 10)
                                    .cornerRadius(16)
                                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color("Stroke-Grey")))
                                    .background(RoundedRectangle(cornerRadius: 16).fill(Color("Grey")))
                                    .autocapitalization(.none)
                                    .disableAutocorrection(true)
                                
                            }// end of stack 4
                        }// end of 4 section
                        VStack(spacing: 9){
                            Section(header: Text("الرقم السري")
                                .foregroundColor(Color("DarkBlue"))
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            ) {
                                
                                SecureField("أدخل رقمك السري", text: $password
                                )
                                .multilineTextAlignment(.trailing)
                                .frame(height: 50)
                                .textFieldStyle(PlainTextFieldStyle())
                                .padding([.horizontal], 10)
                                .cornerRadius(16)
                                .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color("Stroke-Grey")))
                                .background(RoundedRectangle(cornerRadius: 16).fill(Color("Grey")))
                                .autocapitalization(.none)
                                .disableAutocorrection(true)
                                
                            }//end of stack 5
                        }// end of 5 section
                        VStack(spacing: 9){
                            Section(header: Text("رقم الهوية الوطنية")
                                .foregroundColor(Color("DarkBlue"))
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            ) {
                                
                                TextField("أدخل رقم هويتك", text: $idNumber
                                )
                                .multilineTextAlignment(.trailing)
                                .frame(height: 50)
                                .textFieldStyle(PlainTextFieldStyle())
                                .padding([.horizontal], 10)
                                .cornerRadius(16)
                                .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color("Stroke-Grey")))
                                .background(RoundedRectangle(cornerRadius: 16).fill(Color("Grey")))
                                .autocapitalization(.none)
                                .disableAutocorrection(true)
                            }//end of stack 6
                            
                        }// end of 6 section
                        
                        
                    } //end of form
                    .scrollContentBackground(.hidden)
                    .background(Color.white)
                    
                    Button(action: {
                        signUp()
                    }) {
                        Text("تسجيل دخول")
                            .font(Font.custom("Tajawal-Bold", size: 18))
                            .foregroundColor(.white)
                            .modifier(ButtonStyle(buttonHeight: 60, buttonColor: Color("DarkBlue"), buttonRadius: 10))
                            .padding(.horizontal,35)
                            .padding(.top,30)
                    } //: BUTTON
                    NavigationLink( destination: MainView(), isActive: $isSignedIn, label: { EmptyView() } ) .hidden() //: NAVIGATION LINK
                        .disabled(!isFormValid) // The user can't signUp if one of the registration fields is empty
                        .padding(.horizontal,35)
                         .padding(.top,30)
                    Spacer()
                        .navigationTitle("")
                } //end of Vstack
            } //: VSTACK
        } //: NAVIGATION
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
    
    
    struct FarmerSignUpView_Previews: PreviewProvider {
        static var previews: some View {
            FarmerSignUpView()
                .background(colorBackground)
        }
    }
    
    struct ButtonStyle: ViewModifier {
        //MARK:- PROPERTIES
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
