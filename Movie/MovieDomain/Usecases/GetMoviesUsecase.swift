//
//  GetMoviesUsecase.swift
//  MovieDomain
//
//  Created by hbkim on 2022/01/23.
//

import RxSwift

public class GetMoviesUsecase {
  private let repository: MovieRepository

  public init(repository: MovieRepository) {
    self.repository = repository
  }

  public func callAsFunction() -> Observable<[Movie]> {
    repository.getMovies()
      .catchError { error in
        if error is MovieRepositoryError {
          return .error(MovieError.failedToLoad)
        }
        return .error(MovieError.unknown(error))
      }
  }
}
