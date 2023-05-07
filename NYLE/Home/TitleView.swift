//
//  TitleView.swift
//  NYLE
//
//  Created by Rema Alnssiry on 05/05/2023.
//

import SwiftUI

struct TitleView: View {
    var title: String

    var body: some View {
        HStack {
          Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                //.multilineTextAlignment(.trailing)
                .frame(maxWidth: .infinity, alignment: .trailing)
          Spacer()
        } //: HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
        
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "المعدات")
          .previewLayout(.sizeThatFits)
          .background(colorBackground)
      }    }

