//
//  Episode.swift
//  Anime Now!
//
//  Created by Erik Bautista on 9/4/22.
//

import Foundation

struct EpisodeList {
    let episodes: [Episode]
    let nextPage: URL
}

struct Episode: Equatable, Identifiable {
    let id: IDType
    let name: String
    let number: Int
    let description: String
    let thumbnail: [ImageSize]
    let length: Int?    // in Seconds

    enum IDType: Hashable {
        case enime(String)
        case consumet(String)
        case zoro(String)
        case gogoanime(String)
    }
}

extension Episode {
    var lengthFormatted: String {
        guard let length = length else { return "" }
        let hours = length / 3600
        let minutes = (length % 3600) / 60
        let seconds = (length % 3600) % 60

        var retVal: [String] = []

        if hours > 0 {
            retVal += ["\(hours) h"]
        }

        if minutes > 0 {
            retVal += ["\(minutes) m"]
        }

        if seconds > 0 && minutes == 0 {
            retVal += ["\(seconds) s"]
        }

        return retVal.joined(separator: " ")
    }
}

extension Episode {
    static let empty = Episode(
        id: .enime(""),
        name: "",
        number: 0,
        description: "",
        thumbnail: [],
        length: 0
    )

    static let demoEpisodes: [Episode] = [
        .init(
            id: .enime("cl6ooypne2201181rtgxmvdmmfx"),
            name: "Homecoming",
            number: 1,
            description: "An older and stronger Naruto returns from his two and a half years of training with Jiraiya. When he gets back he finds that many things have changed since he left. From Konohamaru becoming a Gennin and being under the supervision of Ebisu to Tsunade's, the Fifth Hokage, being added to the great stone faces. Now the tasks of starting things where they were left has begun. And what new danger does Jiraiya know about?",
            thumbnail: [.original(URL(string: "https://artworks.thetvdb.com/banners/episodes/79824/320623.jpg")!)],
            length: nil
        )
    ]
}