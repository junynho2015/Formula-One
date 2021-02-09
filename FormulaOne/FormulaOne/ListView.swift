//
//  ListView.swift
//  FormulaOne
//
//  Created by Olimpio Junior on 05/02/21.
//

import SwiftUI

struct ListView: View {
    
    @ObservedObject private var pilotListVM = PostListViewModel()
    
    var body: some View {
       
        List(self.pilotListVM.posts, id: \.id) { post in
            
            HStack{
                Text(post.Pilot)
//                Text(post.Description)
//                Image(post.Image)
            
            }
        }
        
        
    }
}




struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
