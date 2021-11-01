//
//  FormView.swift
//  KeyBoardHeight
//
//  Created by Benjamin Lewis on 1/11/21.
//

import SwiftUI

struct FormView: View {
  @State private var value1: String = ""
  @State private var value2: String = ""
  @State private var value3: String = ""
  @State private var value4: String = ""

  var body: some View {
    VStack {
      Image(systemName: "keyboard")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(height: 100)
        .padding()
      Text("First")
      TextField("First texfield", text: $value1)
        .disableAutocorrection(true)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding()
      Text("Second")
      TextField("Second texfield", text: $value2)
        .disableAutocorrection(true)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding()
      Text("Third")
      TextField("Third texfield", text: $value3)
        .disableAutocorrection(true)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding()
      Text("Forth")
      TextField("Forth texfield", text: $value4)
        .disableAutocorrection(true)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding()
    }
  }
}

struct FormView_Previews: PreviewProvider {
  static var previews: some View {
    FormView()
  }
}
