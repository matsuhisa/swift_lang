// Playground - noun: a place where people can play
// http://techlife.cookpad.com/entry/2014/11/12/170041

import UIKit

// ビューのサイズ
let size = CGSize(width: 200, height: 50)

// UIViewを生成
let view:UIView = UIView(frame: CGRect(origin: CGPointZero, size: size))
view.backgroundColor = UIColor(white: 0.9, alpha: 1.0)


// CoreGraphicsで描画する
UIGraphicsBeginImageContextWithOptions(size, false, 0)


// viewのlayerに描画したものをセットする
view.layer.contents = UIGraphicsGetImageFromCurrentImageContext().CGImage

UIGraphicsEndImageContext()

// PlaygroundのTimelineに表示するためのview
let preview = view





