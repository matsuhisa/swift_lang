
import UIKit
import CoreImage

var url = "http://www.yahoo.co.jp/"

// NSString から NSDataへ変換
let data = url.dataUsingEncoding(NSUTF8StringEncoding)!

// QRコード生成のフィルター
// NSData型でデーターを用意
// inputCorrectionLevelは、誤り訂正レベル
let qr = CIFilter(name: "CIQRCodeGenerator", withInputParameters: ["inputMessage": data, "inputCorrectionLevel": "M"])!


let sizeTransform = CGAffineTransformMakeScale(10, 10)
let qrImage = qr.outputImage!.imageByApplyingTransform(sizeTransform)


