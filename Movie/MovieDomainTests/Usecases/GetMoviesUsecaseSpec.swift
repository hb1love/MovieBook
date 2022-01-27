//
//  GetMoviesUsecaseSpec.swift
//  MovieDomainTests
//
//  Created by hekim04 on 2022/01/23.
//

import Quick
import Nimble
import Cuckoo
import RxCocoa
import RxSwift
import RxTest
import RxBlocking
@testable import MovieDomain

class GetMoviesUsecaseSpec: QuickSpec {
  override func spec() {
    var usecase: GetMoviesUsecase!
    var movieRepository: MockMovieRepository!

    beforeEach {
      movieRepository = MockMovieRepository()
      usecase = GetMoviesUsecase(repository: movieRepository)
    }

    let ironman = Movie(
      id: "1",
      title: "아이언맨",
      description: "empty",
      director: "Jon Favreau",
      rating: 4.9,
      posterUrl: "empty",
      marked: false
    )
    let movies = [ironman]

    it("should get movies from the repository") {
      // given (arrange)
      stub(movieRepository) { repository in
        when(repository.getMovies()).thenReturn(Observable.just(movies))
      }

      do {
        // when (act)
        let result = try usecase.execute()
          .toBlocking()
          .toArray()

        // then (assert)
        expect(result[0]).to(equal(movies))
        verify(movieRepository, times(1)).getMovies()
      } catch {
        fail()
      }
    }
  }
}
