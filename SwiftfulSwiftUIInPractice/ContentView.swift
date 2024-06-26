//
//  ContentView.swift
//  SwiftfulSwiftUIInPractice
//
//  Created by Rizal Fahrudin on 22/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.router) var router
    
    var body: some View {
        
        List {
            Text("Spotify")
                .asButton {
                    router.showScreen(.fullScreenCover) { _ in
                        SpotifyHomeView()
                    }
                }
            
            Text("Bumble")
                .asButton {
                    router.showScreen(.fullScreenCover) { _ in
                        BumbleHomeView()
                    }
                }
            
            Text("Netflix")
                .asButton {
                    router.showScreen(.fullScreenCover) { _ in
                        NetflixHomeView()
                    }
                }
        }
        
    }
       
}

#Preview {
    ContentView()
}
