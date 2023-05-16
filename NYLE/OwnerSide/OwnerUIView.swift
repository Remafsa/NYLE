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
    @State private var earthName = ""
    @State private var landNumber = ""
    @State private var price = ""
    @State private var contractDuration = ""
    @State private var landArea = ""
    @State private var region = ""
    @State private var city = ""
    @State private var postalCode = ""
    @State private var address = ""
    @State private var condition = ""
    @State private var soilType = ""
    @State private var description = ""
    
    var body: some View {
      
        Form {
            
            Section(header: Text("بيانات الأرض"))
            {
                TextField("اسم الأرض", text: $earthName)
                    .offset(x:250,y:5)
                TextField("رقم الأرض", text: $landNumber)
                    .offset(x:255,y:5)
                
                TextField("السعر (ريال سعودي)", text: $price)
                    .offset(x:185,y:5)
                
                TextField("مدة العقد (شهريًا)", text: $contractDuration)
                    .offset(x:200,y:5)
                
                TextField("مساحة الأرض (م²)", text: $landArea)
                    .offset(x:200,y:5)
                
            }
            .foregroundColor(Color("Green"))
            
            Section(header: Text("بيانات الموقع")) {
                TextField("المنطقة", text: $region)
                    .offset(x:260,y:5)
                TextField("المدينة", text: $city)
                    .offset(x:270,y:5)
                TextField("الرمز البريدي", text: $postalCode)
                    .offset(x:235,y:5)
                TextField("العنوان", text: $address)
                    .offset(x:270,y:5)
            }
            .foregroundColor(Color("Green"))
            
            Section(header: Text("الوصف")) {
                Picker("الحالة", selection: $condition) {
                    Text("للإيجار").tag("Rent")
                    Text("للبيع").tag("Sell")
                    
                }
                
                TextField("نوع التربة", text: $soilType)
                    .offset(x:260,y:5)
                // Add code to handle photo upload
                
                TextField("الوصف", text: $description)
                    .offset(x:270,y:5)
            }
            .foregroundColor(Color("Green"))
            
            Button(action: {
                // Add code to handle button action
            }) {
                
                
                Text("حفظ")
                    .offset(x:140,y:5)
                    .foregroundColor(Color("ColorBackground"))
                    .padding(.vertical,10)
                    .padding(.horizontal,25)
                    .background(Color("Darkblue"))
                    .cornerRadius(10)
            }
        }
              .navigationTitle("اضافة ارض")
          
          }
      
              
        }
    

// هنا حطي نموذج المعدات
struct eqForm:View{
    @State private var EquipmentName = ""
     @State private var EquipmentID  = ""
     @State private var Equipmentprice = ""
     @State private var EquipmentConTerm = ""

     @State private var EquipmentCountry = ""
     @State private var EquipmentCity = ""
     @State private var EquipmentZipCode = ""
     @State private var EquipmentAdress  = ""
     @State private var condition = ""
     @State private var EquipmentType = ""
     @State private var EquipmentDescription = ""


    var body:some View{
        Form {
              Section(header: Text("بيانات المُعدة"))
              {
                  TextField("اسم المُعدة", text: $EquipmentName)
                      .offset(x:250,y:5)
                  TextField("رقم المُعدة", text: $EquipmentID )
                      .offset(x:255,y:5)

                  TextField("السعر (ريال سعودي)", text: $Equipmentprice)
                      .offset(x:185,y:5)

                  TextField("مدة العقد (شهريًا)", text: $EquipmentConTerm)
                      .offset(x:200,y:5)

              }
              .foregroundColor(Color("Green"))
              
              Section(header: Text("بيانات الموقع")) {
                  TextField("المنطقة", text: $EquipmentCountry)
                      .offset(x:260,y:5)
                  TextField("المدينة", text: $EquipmentCity )
                      .offset(x:270,y:5)
                  TextField("الرمز البريدي", text: $EquipmentZipCode)
                      .offset(x:235,y:5)
                  TextField("العنوان", text: $EquipmentAdress )
                      .offset(x:270,y:5)
              }
              .foregroundColor(Color("Green"))
              
              Section(header: Text("الوصف")) {
                  Picker("الحالة", selection: $condition) {
                      Text("للإيجار").tag("Rent")
                      Text("للبيع").tag("Sell")
                          
                  }
                  
                  
                  TextField("نوع المُعدة", text: $EquipmentType)
                      .offset(x:260,y:5)
                  // Add code to handle photo upload
                  
                  TextField("الوصف", text: $EquipmentDescription)
                      .offset(x:270,y:5)
              }
              .foregroundColor(Color("Green"))
              
              Button(action: {
                  // Add code to handle button action
              }) {
                  Text("حفظ")
                      .offset(x:140,y:5)
                      .foregroundColor(Color("ColorBackground"))
                      .padding(.vertical,10)
                      .padding(.horizontal,25)
                      .background(Color("Darkblue"))
                      .cornerRadius(10)
                 
              }
          }
                .navigationTitle("اضافة معدات")
        
    }
}

   
//نورا هنا نهاية جزئيتك لا تغيرين اي شي ثاني

        
        
        
    


