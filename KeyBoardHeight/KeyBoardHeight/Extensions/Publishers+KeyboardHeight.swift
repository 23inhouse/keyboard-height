//
//  Publishers+KeyboardHeight.swift
//  KeyBoardHeight
//
//  Created by Benjamin Lewis on 1/11/21.
//

import Combine
import SwiftUI

extension Publishers {
  static var keyboardHeight: AnyPublisher<CGFloat, Never> {
    func publisher(for name: Notification.Name) -> NotificationCenter.Publisher {
      return NotificationCenter.default.publisher(for: name)
    }

    let willShow = publisher(for: UIApplication.keyboardWillShowNotification).map { $0.keyboardHeight }
    let willHide = publisher(for: UIApplication.keyboardWillHideNotification).map { _ in CGFloat.zero }

    return MergeMany(willShow, willHide).eraseToAnyPublisher()
  }
}

