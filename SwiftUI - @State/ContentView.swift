//
//  ContentView.swift
//  SwiftUI - @State
//
//  Created by Saif on 18/06/19.
//  Copyright © 2019 LeftRightMind. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    @State var user = "Prashant"
    
    var body: some View {
        VStack {
            Text(user)
                .frame(width:UIScreen.main.bounds.width,height: 50)
                .background(Color.blue)
                .foregroundColor(Color.white)
            
            Button(action:switchUser, label:{ Text("Switch User")})
        }
    }
    
    func switchUser() {
        
        let users = [
            "Prashant",
            "Swapnil",
            "Bhagyawant",
            "Aman",
            "Vipin"
        ]
        
        user = users.randomElement() ?? "No users"
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
