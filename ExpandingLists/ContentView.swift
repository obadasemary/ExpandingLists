//
//  ContentView.swift
//  ExpandingLists
//
//  Created by Abdelrahman Mohamed on 4.07.2020.
//

import SwiftUI

struct Bookmark: Identifiable {

    let id = UUID()
    let name: String
    let icon: String
    var items: [Bookmark]?
}

extension Bookmark {

    static let apple = Bookmark(name: "Apple", icon: "1.circle")
    static let bbc = Bookmark(name: "BBC", icon: "square.and.pencil")
    static let swift = Bookmark(name: "Swift", icon: "bolt.fill")
    static let twitter = Bookmark(name: "Twitter", icon: "mic")

    static let favorites = Bookmark(name: "Favorites", icon: "star", items: [Bookmark.apple, Bookmark.bbc, Bookmark.swift, Bookmark.twitter])
    static let recent = Bookmark(name: "Recent", icon: "timer", items: [Bookmark.apple, Bookmark.bbc, Bookmark.swift, Bookmark.twitter])
    static let recommended = Bookmark(name: "Recommended", icon: "hand.thumbsup", items: [Bookmark.apple, Bookmark.bbc, Bookmark.swift, Bookmark.twitter])
}

struct ContentView: View {

    let items: [Bookmark] = [.favorites, .recent, .recommended]

    var body: some View {
        NavigationView {
            List(items, children: \.items) { row in
                Image(systemName: row.icon)
                Text(row.name)
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .navigationTitle("ExpandingLists")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
