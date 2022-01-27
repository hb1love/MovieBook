// MARK: - Mocks generated from file: MovieDomain/Repositories/MovieRepository.swift at 2022-01-23 08:21:21 +0000

//
//  MovieRepository.swift
//  MovieDomain
//
//  Created by hekim04 on 2022/01/23.
//

import Cuckoo
@testable import MovieDomain

import RxSwift


public class MockMovieRepository: MovieRepository, Cuckoo.ProtocolMock {
    
    public typealias MocksType = MovieRepository
    
    public typealias Stubbing = __StubbingProxy_MovieRepository
    public typealias Verification = __VerificationProxy_MovieRepository

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: MovieRepository?

    public func enableDefaultImplementation(_ stub: MovieRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    public func getMovies() -> Observable<[Movie]> {
        
    return cuckoo_manager.call("getMovies() -> Observable<[Movie]>",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getMovies())
        
    }
    
    
    
    public func setBookmark(movie: Movie, mark: Bool) -> Single<Bool> {
        
    return cuckoo_manager.call("setBookmark(movie: Movie, mark: Bool) -> Single<Bool>",
            parameters: (movie, mark),
            escapingParameters: (movie, mark),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.setBookmark(movie: movie, mark: mark))
        
    }
    

	public struct __StubbingProxy_MovieRepository: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getMovies() -> Cuckoo.ProtocolStubFunction<(), Observable<[Movie]>> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockMovieRepository.self, method: "getMovies() -> Observable<[Movie]>", parameterMatchers: matchers))
	    }
	    
	    func setBookmark<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(movie: M1, mark: M2) -> Cuckoo.ProtocolStubFunction<(Movie, Bool), Single<Bool>> where M1.MatchedType == Movie, M2.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Movie, Bool)>] = [wrap(matchable: movie) { $0.0 }, wrap(matchable: mark) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockMovieRepository.self, method: "setBookmark(movie: Movie, mark: Bool) -> Single<Bool>", parameterMatchers: matchers))
	    }
	    
	}

	public struct __VerificationProxy_MovieRepository: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getMovies() -> Cuckoo.__DoNotUse<(), Observable<[Movie]>> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("getMovies() -> Observable<[Movie]>", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func setBookmark<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(movie: M1, mark: M2) -> Cuckoo.__DoNotUse<(Movie, Bool), Single<Bool>> where M1.MatchedType == Movie, M2.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Movie, Bool)>] = [wrap(matchable: movie) { $0.0 }, wrap(matchable: mark) { $0.1 }]
	        return cuckoo_manager.verify("setBookmark(movie: Movie, mark: Bool) -> Single<Bool>", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

public class MovieRepositoryStub: MovieRepository {
    

    

    
    
    
    public func getMovies() -> Observable<[Movie]>  {
        return DefaultValueRegistry.defaultValue(for: (Observable<[Movie]>).self)
    }
    
    
    
    public func setBookmark(movie: Movie, mark: Bool) -> Single<Bool>  {
        return DefaultValueRegistry.defaultValue(for: (Single<Bool>).self)
    }
    
}

