#!/usr/bin/env swift

import AppKit
import Foundation

extension NSColor {
  convenience init(hexString: String) {
    var hex = hexString.hasPrefix("#") ? String(hexString.characters.dropFirst()) : hexString

    guard hex.characters.count == 3 || hex.characters.count == 6 else {
      self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 1)
      return
    }

    if hex.characters.count == 3 {
      for (index, char) in hex.characters.enumerate() {
        hex.insert(char, atIndex: hex.startIndex.advancedBy(index * 2))
      }
    }

    let number = Int(hex, radix: 16)!
    let red = CGFloat((number >> 16) & 0xFF) / 255.0
    let green = CGFloat((number >> 8) & 0xFF) / 255.0
    let blue = CGFloat(number & 0xFF) / 255.0

    self.init(red: red, green: green, blue: blue, alpha: 1)
  }
}

let documentPath = "./"
let fileName = "colorlist.scss"
let filePath = documentPath + fileName

let colorListName:String = "colorlist"
let list = NSColorList(name: colorListName)

var colors: [Array<String>] = []

do {
  let data = try String(contentsOfFile: filePath, encoding: NSUTF8StringEncoding)
  data.enumerateLines { (line, stop) -> () in
    let color_keys: [String] = line.componentsSeparatedByString(":")
    var name = color_keys[0].hasPrefix("$") ? String(color_keys[0].characters.dropFirst()) : color_keys[1]
    var hex  = color_keys[1].hasPrefix(" ") ? String(color_keys[1].characters.dropFirst()) : color_keys[1]
    hex = hex.hasSuffix(";") ? String(hex.characters.dropLast()) : hex

    let color: [String] = [name, hex]
    colors.append(color)
  }
} catch {
  print("error")
}

//print(colors)

for color in colors {
  list.setColor(NSColor(hexString: color[1]), forKey: color[0])
}

print(list.writeToFile(nil))
