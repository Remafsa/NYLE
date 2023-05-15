//
//  OwnerUIView.swift
//  NYLE
//
//  Created by Sameerah N on 19/10/1444 AH.
//

import SwiftUI

struct OwnerUIView: View {
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    VStack(spacing:0){
                        Rectangle()
                            .fill(Color("DarkBlue"))
                            .frame(width: 88, height: 3)
                            .zIndex(1)
                        Image("profile")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .padding(.top,6)
                            .padding(.bottom,4)
                            .padding(.horizontal,8)
                            .background(Color("ColorBackground"))
                            .cornerRadius(10)
                            .shadow(color:Color.black.opacity(0.1), radius:5, x:8, y:8)
                        //.shadow(color:Color.white.opacity(0.5), radius:5, x:-8, y:-8)
                    }
                    VStack(alignment: .leading, spacing:12){
                        Text("الاسم")
                            .font(.title)
                            .foregroundColor(Color.black.opacity(0.8))
                        Text(" مالك")
                            .foregroundColor(Color.black.opacity(0.7))
                            .padding(.top,8)
                        Text("منطقة الجوف")
                            .foregroundColor(Color.black.opacity(0.7))
                    }
                    .padding(.leading,20)
                    
                    
                    Spacer(minLength: 0)
                }
                .padding(.horizontal,20)
                .padding(.vertical,20)
                .background(Color("ColorBackground"))
                .cornerRadius(8)
                .shadow(color: Color.black.opacity(0.1), radius: 5, x:8, y:8)
                .shadow(color: Color.white.opacity(0.5), radius: 5, x:-8, y:-8)
                .padding(.horizontal)
                .padding(.top,25)
                
                // cards
                HStack{
                    
                }
                .padding(.top,30)
                
                HStack(spacing:20){
                    NavigationLink(destination: landsView(), label: {
                        
                        Button(action:{
                            
                        }){
                            VStack(spacing:12){
                                Image("الاراضي")
                                    .resizable()
                                    .frame(width:80, height: 80)
                                Text("الأراضي")
                                    .font(.title)
                                    .padding(.top,10)
                                    .foregroundColor(Color("DarkBlue"))
                            }
                        }
                        .padding(.vertical,10)
                        .padding(.bottom,15)
                        // half screen-spacing-two side padding =60
                        .frame(width: (UIScreen.main.bounds.width - 60)/2)
                        .background(ignoresSafeAreaEdges: .all)
                        .cornerRadius(15)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x:8, y:8)
                        .shadow(color: Color.white.opacity(0.5), radius: 5, x:-8, y:-8)
                    })
                    NavigationLink(destination: equipmentView(), label: {
                        Button(action:{
                            
                        }){
                            VStack(spacing:12){
                                Image("المعدات")
                                    .resizable()
                                    .frame(width:80, height: 80)
                                Text("المعدات")
                                    .font(.title)
                                    .padding(.top,10)
                                    .foregroundColor(Color("DarkBlue"))
                            }
                        }
                        .padding(.vertical,10)
                        // .padding(.top,30)
                        
                        .padding(.bottom,15)
                        // half screen-spacing-two side padding =60
                        .frame(width: (UIScreen.main.bounds.width - 60)/2)
                        .background(ignoresSafeAreaEdges: .all)
                        .cornerRadius(15)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x:8, y:8)
                        .shadow(color: Color.white.opacity(0.5), radius: 5, x:-8, y:-8)
                        
                    })
                     }
                    
                    Spacer(minLength: 70)
             
                
                //   NavigationStack {
                        HStack{
                           
                        }
                       .toolbar {
                           ToolbarItemGroup(placement: .bottomBar) {
                             Button(action:{
                             }){
                                 NavigationLink(destination: settingView(), label: {
                                     Text("الاعدادات")
                                 }
                                 )
                             }
                                 
                              Spacer()
                                
                               Button("الرسائل") {
                              }
                                
                           }
                            
                       }
                      
                 //  }
                 .background(Color("Stroke-Grey").edgesIgnoringSafeArea(.all))
                  .foregroundColor(Color("DarkBlue"))
                  .navigationTitle("الملف الشخصي")
                  .offset(y:-30)
                    
                }
               
               
            }
           
        }
        
        
    }

struct landsView:View{
    var body:some View{
        VStack{
            HStack{
               
                    Button(action:{
                        
                    }){
                        NavigationLink(destination:landForm(), label: {
                        Text("Add")
                            .font(.title3)
                            .foregroundColor(Color("DarkBlue"))
                            .padding(.vertical,10)
                            .padding(.horizontal,25)
                            .background(Color("ColorBackground"))
                            .cornerRadius(10)
                    })
                }
            }
                               
            .padding()
            
            HStack(spacing:30){
                Text("لم تعرض أية اراضي الى الآن")
            }
        }
        .navigationTitle("الاراضي")
        .offset(y:-40)
    }
}
    struct equipmentView:View{
        var body:some View{
            VStack{
                HStack{
                   
                        Button(action:{
                            
                        }){
                            NavigationLink(destination: eqForm(), label: {
                            Text("Add")
                                .font(.title3)
                                .foregroundColor(Color("DarkBlue"))
                                .padding(.vertical,10)
                                .padding(.horizontal,25)
                                .background(Color("ColorBackground"))
                                .cornerRadius(10)
                        })
                    }
                }
                .padding()
                HStack{
                    Text("لم تعرض أية معدات الى الآن")
                }
            }
            .navigationTitle("المعدات")
            .offset(y:-40)
        }
    }


    //نورا هنا حطي الاعدادات بس لا تغيرين اسم الstruct
struct settingView:View{
        var body:some View{
            VStack{
                Text("جزئية نورا")
            }
            .navigationTitle("الاعدادات")
            .offset(y:-40)
        }
    }
    
  // نورا هنا حطي نموذج الارض ونفس الشي لا تغيرين
struct landForm:View{
    var body:some View{
        VStack{
            Text("جزئية نورا")
                .navigationTitle("اضافة ارض")
        }
    }
}
// هنا حطي نموذج المعدات
struct eqForm:View{
    var body:some View{
        VStack{
            Text("جزئية نورا")
                .navigationTitle("اضافة معدات")
        }
    }
}

   
//نورا هنا نهاية جزئيتك لا تغيرين اي شي ثاني

        
        
        
    


