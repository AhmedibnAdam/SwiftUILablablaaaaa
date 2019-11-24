//
//  HomeViewInteractor.swift
//
//  Created by Sebastian Boldt on 03.11.19.
//  Copyright © 2019 Sebastian Boldt. All rights reserved.
//

import Foundation

protocol HomeInteractorProtocol {
    
}

final class HomeInteractor: HomeInteractorProtocol {
    private let dependencies: HomeInteractorDependenciesProtocol
    
    init(dependencies: HomeInteractorDependenciesProtocol) {
        self.dependencies = dependencies
    }
}
