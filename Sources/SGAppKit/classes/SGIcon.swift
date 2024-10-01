// -----------------------------------------------------------------------------
// SGIcon.swift
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
//     26/09/2024  Paul Willmott - SGIcon.swift created
// -----------------------------------------------------------------------------

import Foundation
import AppKit

public enum SGIcon : String, CaseIterable {
  
  // MARK: Enumeration
  
  case addItem                = "AddItem"
  case addToGroup             = "AddToGroup"
  case bolt                   = "Bolt"
  case bottomThird            = "BottomThird"
  case connection             = "Connection"
  case cursor                 = "Cursor"
  case fitToSize              = "FitToSize"
  case gear                   = "Gear"
  case groupMode              = "GroupMode"
  case help                   = "Help"
  case info                   = "Info"
  case leadingThird           = "LeadingThird"
  case locationFinder         = "LocationFinder"
  case map                    = "Map"
  case removeFromGroup        = "RemoveFromGroup"
  case removeItem             = "RemoveItem"
  case rotateClockwise        = "RotateClockwise"
  case rotateCounterClockwise = "RotateCounterClockwise"
  case speedometer            = "Speedometer"
  case trailingThird          = "TrailingThird"
  case zoomIn                 = "ZoomIn"
  case zoomOut                = "ZoomOut"
  case wrench                 = "Wrench"
  case lightbulb              = "LightBulb"
  case gearshift              = "GearShift"
  case speaker                = "Speaker"
  case sliderVertical         = "SliderVertical"
  case smoke                  = "Smoke"
  case brake                  = "Brake"
  case engine                 = "Engine"
  case envelope               = "Envelope"
  case button                 = "Button"
  case id                     = "id"
  case sunglasses             = "Sunglasses"
  case warning                = "Warning"
  
  // MARK: Public Properties
  
  public var image : NSImage? {
    return NSImage(symbolName: self.rawValue, bundle: Bundle.module, variableValue: 1.0)
  }
  
  // MARK: Public Methods
  
  @MainActor public func button(target: Any?, action: Selector?) -> NSButton? {
    guard let image = NSImage(symbolName: self.rawValue, bundle: Bundle.module, variableValue: 1.0) else {
      return nil
    }
    return NSButton(image: image, target: target, action: action)
  }
  
}
