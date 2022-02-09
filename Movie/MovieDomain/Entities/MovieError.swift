//
//  MovieError.swift
//  MovieDomain
//
//  Created by hbkim on 2022/02/05.
//

public enum MovieError: Error {
  case unknown(Error)
  case failedToLoad
}

extension MovieError: Equatable {
  public static func == (lhs: MovieError, rhs: MovieError) -> Bool {
    switch (lhs, rhs) {
    case (.unknown, .unknown): return true
    case (.failedToLoad, .failedToLoad): return true
    default: return false
    }
  }
}
