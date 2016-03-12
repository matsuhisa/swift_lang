import UIKit

class Watch {
    var title: String      = "名もなき名画"
    var watchDate: NSDate  = NSDate()
    var created_at:NSDate  = NSDate()
    var modified_at:NSDate = NSDate()
    var location: String   = ""
    var grade: Double      = 0.0
    var text: String       = ""
    var movie_id: Int      = 0
    
    init(){
    }
    
    init(title:String){
        self.title = title
    }
}

class WatchList {
    var watchs = Array<Watch>()
    
    func init(){
        var watch:Watch = Watch()
        self.add(watch)
    }
    
    func count()->Int{
        return watchs.count
    }
    
    func add(watch:Watch){
        watchs.append(watch)
    }
    
    func delete(){
    }
}

var watchList: WatchList = WatchList()














