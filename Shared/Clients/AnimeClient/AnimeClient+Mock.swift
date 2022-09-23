//
//  AnimeClient+Mock.swift
//  Anime Now!
//
//  Created by Erik Bautista on 9/12/22.
//

import Foundation

extension AnimeClient {
    static let mock = Self { _ in
        .none
    } setSourceClient: { _ in
        .none
    } getTopTrendingAnime: {
        .init(value: [.attackOnTitan, .narutoShippuden])
    } getTopUpcomingAnime: {
        .init(value: [])
    } getTopAiringAnime: {
        .init(value: [])
    } getHighestRatedAnime: {
        .init(value: [])
    } getMostPopularAnime: {
        .init(value: [])
    } searchAnimes: { _ in
        .none
    } getEpisodes: { _ in
        .none
    } getSources: { _ in
        .none
    }
}