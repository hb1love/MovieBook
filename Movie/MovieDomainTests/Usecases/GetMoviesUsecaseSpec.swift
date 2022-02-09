//
//  GetMoviesUsecaseSpec.swift
//  MovieDomainTests
//
//  Created by hbkim on 2022/01/23.
//

import Quick
import Nimble
import Cuckoo
import RxCocoa
import RxSwift
import RxTest
import RxBlocking
@testable import MovieDomain
import Darwin

class GetMoviesUsecaseSpec: QuickSpec {
  override func spec() {
    var getMovies: GetMoviesUsecase!
    var movieRepository: MockMovieRepository!

    beforeEach {
      movieRepository = MockMovieRepository()
      getMovies = GetMoviesUsecase(repository: movieRepository)
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
        let result = try getMovies()
          .toBlocking()
          .toArray()

        // then (assert)
        expect(result[0]).to(equal(movies))
        verify(movieRepository, times(1)).getMovies()
      } catch {
        fail()
      }
    }

    it("should return domain error when occurs repository error") {
      // given (arrange)
      stub(movieRepository) { repository in
        when(repository.getMovies()).thenReturn(Observable.error(MockMovieRepositoryError()))
      }

      // andExpect
      XCTAssertThrowsError(try getMovies().toBlocking().toArray()) { error in
        XCTAssertEqual(error as! MovieError, MovieError.failedToLoad)
      }
    }
  }
}
