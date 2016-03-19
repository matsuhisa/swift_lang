
import UIKit
import CoreImage

func outputQRcode(url: String, correctionLevel: String = "M", moduleSize: CGFloat = 10) -> CIImage {
    // NSString から NSDataへ変換
    let data = url.dataUsingEncoding(NSUTF8StringEncoding)!
    
    // QRコード生成のフィルター
    // NSData型でデーターを用意
    // inputCorrectionLevelは、誤り訂正レベル
    let qr = CIFilter(name: "CIQRCodeGenerator", withInputParameters: ["inputMessage": data, "inputCorrectionLevel": correctionLevel])!
    
    
    let sizeTransform = CGAffineTransformMakeScale(moduleSize, moduleSize)
    let qrImage:CIImage = qr.outputImage!.imageByApplyingTransform(sizeTransform)
    return qrImage
}

// 出力

outputQRcode("http://qiita.com/")
outputQRcode("http://qiita.com/", moduleSize: 50)

// やりたいこと
// 色を変えたい




