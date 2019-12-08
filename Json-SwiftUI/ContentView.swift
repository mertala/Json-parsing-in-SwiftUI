//
//  ContentView.swift
//  Json-SwiftUI
//
//  Created by Mert Ala on 8.12.2019.
//  Copyright © 2019 Mert Ala. All rights reserved.
//


import Foundation
import SwiftUI
import Combine
 

struct ContentView: View {
    @ObservedObject var fetcher = UserFetcher()
    
    var body: some View {
        NavigationView  {
        VStack {
           
            List(fetcher.users) { user in
               
                VStack (alignment: .leading) {
                    Text(user.name)
                    Text(user.email)
                        .font(.system(size: 11))
                        .foregroundColor(Color.gray)
                }
                  
            }
     
        }
         .navigationBarTitle(Text("Users"))
    }
    
}

 

}
