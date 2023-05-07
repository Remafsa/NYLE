//
//  LogoView.swift
//  NYLE
//
//  Created by Shoug. on 07/05/2023.
//

import SwiftUI

struct LogoView: View {
 var body: some View {
     HStack(spacing: 4) {
       Text("NYLE".uppercased())
         .font(.title3)
         .fontWeight(.black)
         .foregroundColor(.black)
         
         Image("logoBlue")
           .resizable()
           .scaledToFit()
           .frame(width: 30, height: 30, alignment: .center)
       
         Text("lands".uppercased())
           .font(.title3)
           .fontWeight(.black)
           .foregroundColor(.black)
     } //: HSTACK
   }
 }

//
struct LogoView_Previews: PreviewProvider {
  static var previews: some View {
    LogoView()
          .previewLayout(.sizeThatFits)
          .padding()
   }
}
