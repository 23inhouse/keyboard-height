//
//  ContentView.swift
//  KeyBoardHeight
//
//  Created by Benjamin Lewis on 31/10/21.
//

import Combine
import SwiftUI

struct ContentView: View {
  @State private var keyboardHeight: CGFloat = 0

  var body: some View {
    VStack(spacing: 0) {
      ScrollView {
        FormView()
          .padding(.bottom, keyboardHeight)
      }
      .ignoresSafeArea([], edges: [])
      .background(Color.secondary)
      .clipped()
      TabBarView()
//        .onReceive(Publishers.keyboardHeight) { keyboardHeight = $0 }
//        .frame(height: keyboardHeight > 0 ? .zero : nil)
//        .opacity(keyboardHeight > 0 ? .zero : 100)
        .ignoresSafeArea(.keyboard)
    }
    .ignoresSafeArea(.keyboard)
    .onReceive(Publishers.keyboardHeight) { keyboardHeight = $0 }
  }
}
