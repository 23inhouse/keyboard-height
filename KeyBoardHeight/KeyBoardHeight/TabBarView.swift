//
//  TabBarView.swift
//  KeyBoardHeight
//
//  Created by Benjamin Lewis on 1/11/21.
//

import SwiftUI

struct TabBarView: View {
  var body: some View {
    HStack {
      Image(systemName: "square.and.arrow.up")
        .frame(maxWidth: .infinity)
      Image(systemName: "pencil.circle")
        .frame(maxWidth: .infinity)
      Image(systemName: "externaldrive.connected.to.line.below")
        .frame(maxWidth: .infinity)
      Image(systemName: "paperplane")
        .frame(maxWidth: .infinity)
      Image(systemName: "trash.circle")
        .frame(maxWidth: .infinity)
    }
    .padding(.vertical, 10)
  }
}

struct TabBarView_Previews: PreviewProvider {
  static var previews: some View {
    TabBarView()
      .background(Color.secondary)
  }
}
