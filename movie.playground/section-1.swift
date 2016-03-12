// Playground - noun: a place where people can play

import UIKit

class Movie {
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


//------------
var movies_d = Dictionary<String, Movie>()
var movies_a = Array<Movie>()

for key in 1...5 {
    key
    
    var movie_title = "名前：" + String(key)
    var movie = Movie(title: movie_title)
    movie.movie_id = key

    movies_d[String(key)] = movie
    movies_a.append(movie)
}

movies_d.count
movies_a.count

for key in movies_d.keys {
    var movie = movies_d[key]
    println(movie?.title)
}

for value in movies_d.values {
    println(value.title)
}

for movie in movies_a {
    println(movie.title)
}










