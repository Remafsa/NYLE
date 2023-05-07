//
//  Shop.swift
//  NYLE
//
//  Created by Rema Alnssiry on 05/05/2023.
//

import Foundation
class Shop: ObservableObject {
  @Published var showingProduct: Bool = false
  @Published var selectedProduct: Product? //= nil
}
