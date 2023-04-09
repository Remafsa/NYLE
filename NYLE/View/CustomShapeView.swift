//
//  CustomShapeView.swift
//  NYLE
//
//  Created by Shoug. on 09/04/2023.
//

import SwiftUI

struct CustomShapeView: View {
    var body: some View {
        
        RoundedRectangle(cornerRadius: 25, style: .continuous)
            .fill(.white)
            .frame(width: 375, height: 160)
            .shadow(radius: 6)
    }
}

struct CustomShapeView_Previews: PreviewProvider {
    static var previews: some View {
        CustomShapeView()
    }
}
