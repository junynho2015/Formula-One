//
//  ListViewMode.swift
//  FormulaOne
//
//  Created by Olimpio Junior on 05/02/21.
//

import Foundation

class Webservice{
    
    func getPost(completion: @escaping ([Post]?) -> ()){
        
        guard let url = URL(string: "https://private-3471d-formula1.apiary-mock.com/pilot") else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared.dataTask(with: url) {data, response, error in
            
            guard let data = data, error == nil else {
                
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
           
        
        let posts = try? JSONDecoder().decode([Post].self, from: data)
        
        DispatchQueue.main.async {
            completion(posts)
        }
    }.resume()
}

}
