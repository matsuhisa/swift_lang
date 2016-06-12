#!/usr/bin/env swift

import Foundation

let documentPath = "./"
let fileName = "colorlist.scss"
let filePath = documentPath + fileName

var colors: Array<Any> = []

do {
  let data = try String(contentsOfFile: filePath, encoding: NSUTF8StringEncoding)
  data.enumerateLines { (line, stop) -> () in
    let color_keys: [String] = line.componentsSeparatedByString(":")
    var name = color_keys[0].hasPrefix("$") ? String(color_keys[0].characters.dropFirst()) : color_keys[1]
    var hex  = color_keys[1].hasPrefix(" ") ? String(color_keys[1].characters.dropFirst()) : color_keys[1]
    hex = hex.hasSuffix(";") ? String(hex.characters.dropLast()) : hex
    colors.append([name, hex])
  }
} catch {
  print("error")
}

print(colors)
