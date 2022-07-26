//
//  ContentView.swift
//  Programming Jokes
//
//  Created by Millan Bhandari on 7/26/22.
//

import SwiftUI

struct ContentView: View {
    @State private var jokes = [Joke]()
    var body: some View {
        NavigationView {
            List(jokes) { joke in
                NavigationLink(destination: Text(joke.punchline)
                    .padding()) {
                        Text(joke.setup)
                    }
            }
            .navigationTitle("Programming Jokes")
        }
        .onAppear() {
            getJokes()
        }
    }
    
    func getJokes() {
        let apiKey = "?rapidapi-key=507601bd96msh7505a1cd41b591ep18cd14jsn0d9aa72d8d7f"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Joke: Identifiable {
    let id = UUID()
    var setup = ""
    var punchline = ""
}



