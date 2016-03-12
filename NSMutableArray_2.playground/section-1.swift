// Playground - noun: a place where people can play

import UIKit

class Memo:NSObject {
    var title = "無題"
    var created_at = NSDate()
    
    init(title:String) {
        self.title = title
    }
}

//
var memos = NSMutableArray()
for key in 1...10 {
    var title = "繰り返し" + String(key)
    var memo  = Memo(title:title)
    memos.addObject(memo)
}


// 完全一致
//let keyword:String = "繰り返し"
//let pred:NSPredicate = NSPredicate(format: "title = %@", keyword)

// LIKE検索
let keyword:String = "*1*"
let pred:NSPredicate = NSPredicate(format: "title like %@", keyword)

var result = memos.filteredArrayUsingPredicate(pred)

for(var i=0; i < result.count; i++) {
    var memo:Memo = result[i] as Memo
    println(memo.title)
}







