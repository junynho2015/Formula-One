//
//  PostListViewModel.swift
//  FormulaOne
//
//  Created by Olimpio Junior on 05/02/21.
//

import Foundation

class PostListViewModel: ObservableObject {
    
    @Published var posts = [PostViewModel]()
    
    
    init(){
        Webservice().getPost { posts in
            
            if let posts = posts {
                self.posts = posts.map(PostViewModel.init)
            }
           
            
        }
        
    }
}


struct PostViewModel{
    
    var post: Post
    
    init(post: Post){
        self.post = post
    }
    
    var id: UUID{
        return self.post.id
    }
    
    var Season: Int{
        return self.post.Season
    }

    var Pilot: String{
        return self.post.Pilot
    }

    var Description: String{
        return self.post.Description
    }

//    var Image: String{
//        return self.post.Image
//    }
    
}
