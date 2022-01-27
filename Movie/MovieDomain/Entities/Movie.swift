//
//  Movie.swift
//  MovieDomain
//
//  Created by hekim04 on 2022/01/23.
//

public struct Movie: Equatable {
  public let id: String
  public let title: String
  public let description: String
  public let director: String
  public let rating: Double
  public let posterUrl: String
  public let marked: Bool

  public init(
    id: String,
    title: String,
    description: String,
    director: String,
    rating: Double,
    posterUrl: String,
    marked: Bool
  ) {
    self.id = id
    self.title = title
    self.description = description
    self.director = director
    self.rating = rating
    self.posterUrl = posterUrl
    self.marked = marked
  }
}
