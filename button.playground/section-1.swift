// Playground - noun: a place where people can play
// http://techlife.cookpad.com/entry/2014/11/12/170041

import UIKit

// ビューのサイズ
let size = CGSize(width: 200, height: 200)

// UIViewを生成
let view:UIView = UIView(frame: CGRect(origin: CGPointZero, size: size))
view.backgroundColor = UIColor(white: 0.9, alpha: 1.0)

//-------------

// CoreGraphicsで描画する
UIGraphicsBeginImageContextWithOptions(size, false, 0)

// アイコン画像を描画する
var imageUrl:String  = "http://asset.cpcdn.com/assets/blank_logo_recipe.png"
var imageURL:NSURL   = NSURL.URLWithString(imageUrl)
var imageData:NSData = NSData(contentsOfURL: imageURL)

let image = UIImage(data:imageData)
image.drawInRect(CGRectMake(0,0, 100, 141))

// バッヂの背景を描画する
let rect = CGRectMake(0, 0, 96, 36)
let roundCorner = UIRectCorner.TopLeft | UIRectCorner.BottomRight
let roundSize = CGSizeMake(6.0, 6.0)
let path = UIBezierPath(roundedRect: rect, byRoundingCorners: roundCorner, cornerRadii: roundSize)
UIColor(red: 0.545, green: 0.678, blue: 0.0, alpha: 1.0).setFill()
path.fill()

// 文字を描画する
let attrString = NSAttributedString(
    string: "おすすめ",
    attributes:[NSForegroundColorAttributeName: UIColor.whiteColor(),
        NSFontAttributeName: UIFont.boldSystemFontOfSize(20.0)])
attrString.drawAtPoint(CGPointMake(6, 4))

/*
// CoreGraphicsで描画する
UIGraphicsBeginImageContextWithOptions(size, false, 0)

// 描画する
let path = UIBezierPath()
path.moveToPoint(CGPointMake(50, 100));
path.addLineToPoint(CGPointMake(150, 100))
UIColor.orangeColor().setStroke()
path.stroke()

*/

//-------------

// viewのlayerに描画したものをセットする
view.layer.contents = UIGraphicsGetImageFromCurrentImageContext().CGImage

UIGraphicsEndImageContext()

// PlaygroundのTimelineに表示するためのview
let preview = view





