//
//  MovieRepository.swift
//  MovieDomain
//
//  Created by hekim04 on 2022/01/23.
//

import RxSwift

public protocol MovieRepository {
  func getMovies() -> Observable<[Movie]>
  func setBookmark(movie: Movie, mark: Bool) -> Single<Bool>
}
