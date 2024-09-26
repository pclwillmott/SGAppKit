// -----------------------------------------------------------------------------
// SGComboBox.swift
//
// This Swift source file is a part of the SGAppKit package
// by Paul C. L. Willmott.
//
// Copyright © 2024 Paul C. L. Willmott. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy 
// of this software and associated documentation files (the “Software”), to deal 
// in the Software without restriction, including without limitation the rights 
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
// copies of the Software, and to permit persons to whom the Software is 
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in 
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE 
// SOFTWARE.
// -----------------------------------------------------------------------------
//
// Revision History:
//
//     26/09/2024  Paul Willmott - SGComboBox.swift created
// -----------------------------------------------------------------------------

import Foundation
import AppKit

public class SGComboBox : NSComboBox, NSComboBoxDelegate {
  
  override init(frame frameRect: NSRect) {
    super.init(frame: frameRect)
    self.delegate = self
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
    self.delegate = self
  }
  
  @objc public func comboBoxSelectionDidChange(_ notification: Notification) {
    _ = target?.perform(action, with: self)
  }
  
}
