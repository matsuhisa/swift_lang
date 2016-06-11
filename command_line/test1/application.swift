#!/usr/bin/env swift

import Foundation

let documents_path = "/Users/matsuhisahironobu/Documents/works/swift/command_line/test1/"
let file_body = "こんにちは　世界"
let file_name = "sample.txt"
let file_path = documents_path + file_name

print(file_path)

do {
  try file_body.writeToFile(file_path, atomically: true, encoding: NSUTF8StringEncoding)
} catch {
  // Failed to write file
}
