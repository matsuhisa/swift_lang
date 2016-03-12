//: Playground - noun: a place where people can play
// http://techlife.cookpad.com/entry/2014/11/12/170041

import UIKit

let size = CGSize(width: 200, height: 200)

let view:UIView = UIView(frame: CGRect(origin: CGPointZero, size: size))

// hex を RGB を割合にする
// http://qiita.com/reoy/items/a4223cebf312beeed6e9
var hex_string:String = "f19595"
var hex = NSScanner(string: hex_string)

var color: UInt32 = 0
hex.scanHexInt(&color)
let red = CGFloat((color & 0xFF0000) >> 16) / 255.0
let green = CGFloat((color & 0x00FF00) >> 8) / 255.0
let blue = CGFloat(color & 0x0000FF) / 255.0
view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 0.3)

// RGB を割合にする
/*
var red:CGFloat   = 241/255
var green:CGFloat = 149/255
var blue:CGFloat  = 149/255

view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
*/


let preview = view







