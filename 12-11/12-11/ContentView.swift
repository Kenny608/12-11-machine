//
//  ContentView.swift
//  12-11
//
//  Created by Kenny Luchau on 12/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            imageLearn()
            .tabItem{
                Label("Images", systemImage: "camera.fill")
            }
            wordLearn()
            .tabItem{
                Label("Words", systemImage: "bubble.left.fill")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
