//
//  NetworkManager.swift
//  Hacker news
//
//  Created by ophir hartom on 21/12/2021.
//

import Foundation

class NetworkManager : ObservableObject{
    
    @Published var posts = [Post]()
    
    func fetchData(){
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil{
                    let decode = JSONDecoder()
                    if let safeData = data{
                        do{
                           let resualts =  try decode.decode(Resualts.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = resualts.hits
                            }
                        }
                        catch{
                            print(error)
                        }
                    }
                }
            }
            task.resume();
        }
        
    }
}
