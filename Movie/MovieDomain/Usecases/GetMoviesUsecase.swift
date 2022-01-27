//
//  GetMoviesUsecase.swift
//  MovieDomain
//
//  Created by hekim04 on 2022/01/23.
//

import RxSwift

public class GetMoviesUsecase {
  private let repository: MovieRepository

  public init(repository: MovieRepository) {
    self.repository = repository
  }

  public func execute() -> Observable<[Movie]> {
    repository.getMovies()
  }
}
