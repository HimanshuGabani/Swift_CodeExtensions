//
//  Completion+ViewModelState.swift
//  ""
//
//  Created by Himanshu on 07/06/2022.
//

import Combine
import Foundation

extension Subscribers.Completion {
    func toViewModelState() -> ViewModelState {
        switch self {
        case .failure(let error):
            return .error(error: error)
        case .finished:
            return .loaded
        }
    }
}
