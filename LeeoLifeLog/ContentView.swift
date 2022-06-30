//
//  ContentView.swift
//  LeeoLifeLog
//
//  Created by hyunho lee on 2022/06/19.
//

import SwiftUI

struct ContentView: View {
    
    @State var leeo: User
    var color: Color?
    
    var body: some View {
        
        TabView {
            Main(user: $leeo)
                .tabItem {
                    Image(systemName: "house")
                    Text("Main")
                }
            Profile()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(leeo: User(name: "Leeo", age: 404))
    }
}


struct Profile: View {
    var body: some View {
        Text("Profile")
    }
}


extension ContentView {
    ///  leeoLifeLog의 색깔입니다.
    enum Color: String, CaseIterable, CustomStringConvertible {
        /// The color green.
        case green
        
        /// The color yellow.
        case yellow
        
        /// The color orange.
        case orange
        
        /// The color blue.
        case blue
        
        public var description: String {
            return rawValue
        }
    }
}
