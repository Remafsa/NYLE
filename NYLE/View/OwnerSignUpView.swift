//
//  OwnerSignUpView.swift
//  NYLE
//
//  Created by Rema Alnssiry on 09/04/2023.
//
import SwiftUI

struct OwnerSignUpView: View {
    @State private var OwnerFristName: String = ""
    @State private var OwnerLastName: String = ""
    @State private var OwnerEmail: String = ""
    @State private var OwnerPhoneNumber: String = ""
    @State private var OwnerPassword: String = ""
    @State private var OwnerIDNumber: String = ""
    
    
    var body: some View {
        VStack{
            VStack(alignment: .trailing, spacing: 20){
                VStack( spacing:2){
                    Text("سجل دخولك إلى ")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .font(.title)
                        .foregroundColor(Color("DarkBlue"))
                    Text("حساب المالك ")
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
                            TextField("أسمك الأول", text: $OwnerFristName)
                                .multilineTextAlignment(.trailing)
                                .frame(height: 50)
                                .textFieldStyle(PlainTextFieldStyle())
                                .padding([.horizontal], 10)
                                .cornerRadius(16)
                                .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color("Stroke-Grey")))
                                .background(RoundedRectangle(cornerRadius: 16).fill(Color("Grey")))
                            
                        }// end of stack 1
                        
                    } // end of first section
                    VStack(spacing: 9){
                        Section(header: Text("الأسم الأخير")
                            .foregroundColor(Color("DarkBlue"))
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                        ) {
                            
                            TextField("أسمك الأخير", text: $OwnerLastName)
                                .multilineTextAlignment(.trailing)
                                .frame(height: 50)
                                .textFieldStyle(PlainTextFieldStyle())
                                .padding([.horizontal], 10)
                                .cornerRadius(16)
                                .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color("Stroke-Grey")))
                                .background(RoundedRectangle(cornerRadius: 16).fill(Color("Grey")))
                        }//end of stack 2
                        
                    }// end of 2 section
                    VStack(spacing: 9){
                        Section(header: Text("الأيميل")
                            .foregroundColor(Color("DarkBlue"))
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                        ) {
                            
                            TextField("exampleemil.com", text: $OwnerEmail)
                                .multilineTextAlignment(.trailing)
                                .frame(height: 50)
                                .textFieldStyle(PlainTextFieldStyle())
                                .padding([.horizontal], 10)
                                .cornerRadius(16)
                                .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color("Stroke-Grey")))
                                .background(RoundedRectangle(cornerRadius: 16).fill(Color("Grey")))
                        }//end of stack 3
                        
                    }// end of 3 section
                    VStack(spacing: 9){
                        Section(header: Text("رقم الجوال")
                            .foregroundColor(Color("DarkBlue"))
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                        ) {
                            
                            TextField("05X XXX XXXX", text: $OwnerPhoneNumber)
                                .multilineTextAlignment(.trailing)
                                .frame(height: 50)
                                .textFieldStyle(PlainTextFieldStyle())
                                .padding([.horizontal], 10)
                                .cornerRadius(16)
                                .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color("Stroke-Grey")))
                                .background(RoundedRectangle(cornerRadius: 16).fill(Color("Grey")))
                            
                        }// end of stack 4
                    }// end of 4 section
                    VStack(spacing: 9){
                        Section(header: Text("الرقم السري")
                            .foregroundColor(Color("DarkBlue"))
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                        ) {
                            
                            SecureField("أدخل رقمك السري", text: $OwnerPassword
                            )
                            .multilineTextAlignment(.trailing)
                            .frame(height: 50)
                            .textFieldStyle(PlainTextFieldStyle())
                            .padding([.horizontal], 10)
                            .cornerRadius(16)
                            .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color("Stroke-Grey")))
                            .background(RoundedRectangle(cornerRadius: 16).fill(Color("Grey")))
                            
                        }//end of stack 5
                    }// end of 5 section
                    VStack(spacing: 9){
                        Section(header: Text("رقم الهوية الوطنية")
                            .foregroundColor(Color("DarkBlue"))
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                        ) {
                            
                            TextField("أدخل رقم هويتك", text: $OwnerIDNumber
                            )
                            .multilineTextAlignment(.trailing)
                            .frame(height: 50)
                            .textFieldStyle(PlainTextFieldStyle())
                            .padding([.horizontal], 10)
                            .cornerRadius(16)
                            .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color("Stroke-Grey")))
                            .background(RoundedRectangle(cornerRadius: 16).fill(Color("Grey")))
                        }//end of stack 6
                        
                    }// end of 6 section
                    
                    
                } //end of form
                .scrollContentBackground(.hidden)
                .background(Color.white)
                
                Button(action: {}){
                    Text("تسجيل دخول")
                        .font(Font.custom("Tajawal-Bold", size: 18))
                        .foregroundColor(.white)
                        .modifier(ButtonStyle(buttonHeight: 60, buttonColor: Color("DarkBlue"), buttonRadius: 10))
                    
                }// button
                
                .padding(.horizontal,35)
                .padding(.top,30)
                Spacer()
            } //end of Vstack
            
        }}
    
    struct OwnerSignUpView_Previews: PreviewProvider {
        static var previews: some View {
            OwnerSignUpView()
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
