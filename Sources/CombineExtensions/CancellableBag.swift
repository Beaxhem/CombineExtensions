//
//  CancellableBag.swift
//  
//
//  Created by Ilya Senchukov on 16.10.2021.
//

import Combine

public struct CancellableBag {

    @resultBuilder
    public struct CancellableBuilder {
        static func buildBlock(_ components: AnyCancellable...) -> [AnyCancellable] {
            components
        }
    }

    private var cancellables: Set<AnyCancellable> = []

    public init(@CancellableBuilder _ cancellable: () -> [AnyCancellable]) {
        let cancellable = cancellable()
        cancellable.forEach {
            $0.store(in: &cancellables)
        }
    }

}
