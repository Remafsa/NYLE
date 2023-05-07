//
//  CategoryModel.swift
//  NYLE
//
//  Created by Rema Alnssiry on 05/05/2023.
//

import Foundation

struct Category: Codable, Identifiable {
  let id: Int
  let name: String
  let image: String
}
