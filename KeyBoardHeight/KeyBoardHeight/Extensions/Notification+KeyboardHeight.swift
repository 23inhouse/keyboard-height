//
//  Notification+KeyboardHeight.swift
//  KeyBoardHeight
//
//  Created by Benjamin Lewis on 1/11/21.
//

import SwiftUI

extension Notification {
  var keyboardHeight: CGFloat {
    let keyboardFrameEndUserInfo = userInfo?[UIResponder.keyboardFrameEndUserInfoKey]
    guard let keyboardFrameEndUserInfoKeyRect = keyboardFrameEndUserInfo as? CGRect else { return 0 }

    return keyboardFrameEndUserInfoKeyRect.height
  }
}
