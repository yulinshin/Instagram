//
//  post.swift
//  Instagram
//
//  Created by yulin on 2021/1/28.
//  Copyright © 2021 yulin.com. All rights reserved.
//

import Foundation

struct post{
    var image :[String]
    var content : String
    var likedCount: Int
    var comment : Comment
    var wholiked :[String]
}
struct Comment {
    var image :String
    var name :String
    var content :String
    var likedCont :Int
    var time :String
    var comment : CommentComment
    var wholiked :[String]
}
struct CommentComment{
    var image :String
    var name :String
    var content :String
    var likedCont :Int
    var time :String
    var wholiked :[String]
}


class test{
    struct a {
        var b : Int
    }
}

struct test2 {
    class c{
        var d = 0
    }
}
