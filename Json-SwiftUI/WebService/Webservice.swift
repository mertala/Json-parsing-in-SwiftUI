//
//  Webservice.swift
//  Json-SwiftUI
//
//  Created by Mert Ala on 8.12.2019.
//  Copyright © 2019 Mert Ala. All rights reserved.
//

import Foundation

public class UserFetcher: ObservableObject {

    @Published var users = [User]()
    
    init(){
        load()
    }
    
    func load() {
        let url = URL(string: "https://jsonplaceholder.typicode.com/users")!

    
        URLSession.shared.dataTask(with: url) {(data,response,error) in
            do {
                if let d = data {
                    let decodedLists = try JSONDecoder().decode([User].self, from: d)
                    DispatchQueue.main.async {
                        self.users = decodedLists
                    }
                }else {
                    print("No Data")
                }
            } catch {
                print ("Error")
            }
            
        }.resume()
       
    }
}
