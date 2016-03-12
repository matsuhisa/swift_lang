// Playground - noun: a place where people can play

import UIKit

class Memo:NSObject {
    var title = "無題"
    var created_at = NSDate()
    
    init(title:String) {
        self.title = title
    }
}

var _memos = NSMutableArray()

for key in 1...10 {
    var title = "繰り返し" + String(key)
    var memo  = Memo(title:title)
    _memos.addObject(memo)
}

let sort_descriptor1:NSSortDescriptor = NSSortDescriptor(key:"created_at", ascending:false)

_memos.sortUsingDescriptors([sort_descriptor1])

for key in 0...9 {
    var memo:Memo = _memos.objectAtIndex(key) as Memo
    println(memo.title)
}

/*
var _memos = NSMutableArray()

for key in 1...10 {
    var title = "繰り返し" + String(key)
    var memo  = Memo(title:title)
    _memos.addObject(memo)
}

let sort_descriptor:NSSortDescriptor = NSSortDescriptor(key:"created_at", ascending:false)
let sorts = [sort_descriptor]
let memos = _memos.sortedArrayUsingDescriptors(sorts) as NSArray

for key in 0...9 {
    var memo:Memo = memos.objectAtIndex(key) as Memo
    println(memo.title)
}
*/

