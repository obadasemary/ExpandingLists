# ExpandingLists

Using Expanding Lists

SwiftUI’s List has an enhanced initializer that lets us create expanding sections with child elements – they will be rendered with tappable arrows that open out to reveal children when tapped.


`static let apple = Bookmark(name: "Apple", icon: "1.circle")`

`static let bbc = Bookmark(name: "BBC", icon: "square.and.pencil")`

`static let swift = Bookmark(name: "Swift", icon: "bolt.fill")`

`static let twitter = Bookmark(name: "Twitter", icon: "mic")`

`static let favorites = Bookmark(name: "Favorites", icon: "star", items: [Bookmark.apple, Bookmark.bbc, Bookmark.swift, Bookmark.twitter])`

`static let recent = Bookmark(name: "Recent", icon: "timer", items: [Bookmark.apple, Bookmark.bbc, Bookmark.swift, Bookmark.twitter])`

`static let recommended = Bookmark(name: "Recommended", icon: "hand.thumbsup", items: [Bookmark.apple, Bookmark.bbc, Bookmark.swift, Bookmark.twitter])`

`List(items, children: \.items) { row in
                Image(systemName: row.icon)
                Text(row.name)
            }
            `
