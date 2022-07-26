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
        jokes.append(Joke(setup: "Why do programmers always get Christmas and Halloween mixed up?",
                          punchline: "Because DEC 25 = OCT 31"))
        jokes.append(Joke(setup: "How did the programmer die in the shower?",
                          punchline: "She followed the shampoo bottle instructions: Lather. Rinse. Repeat."))
        jokes.append(Joke(setup: "There are 10 types of people in the world",
                          punchline: "Those who understand binary and those who don’t."))
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



