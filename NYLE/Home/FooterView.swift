//
//  FooterView.swift
//  NYLE
//
//  Created by Rema Alnssiry on 03/05/2023.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
          Text("Discover your slice of paradise with our company's prime lands for sale and rent. Explore endless possibilities and create your dream oasis with us today!")
            .foregroundColor(.gray)
            .multilineTextAlignment(.center)
            .layoutPriority(2)
          
          Image("logoGreen")
            .resizable()
            .frame(width: 100, height: 100)
            //.renderingMode(.template)
            .foregroundColor(.gray)
            .layoutPriority(0)
            
        
          
          Text("Copyright © NYLE Company \nAll right reserved")
            .font(.footnote)
            .fontWeight(.bold)
            .foregroundColor(.gray)
            .multilineTextAlignment(.center)
            .layoutPriority(1)
        } //: VSTACK
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            
    }
}
