// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var now = NSDate()
let dateFormatter = NSDateFormatter()


dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
dateFormatter.dateFormat = "yyyy/MM/dd HH:mm:ss"

println(dateFormatter.stringFromDate(now))