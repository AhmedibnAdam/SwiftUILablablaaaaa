//
//  HomeViewPresenter.swift
//
//  Created by Sebastian Boldt on 03.11.19.
//  Copyright © 2019 Sebastian Boldt. All rights reserved.
//

import Foundation
import Combine

protocol HomePresenterProtocol {
    var exampleProperty: String { get set }
}

final class HomePresenter: HomePresenterProtocol, ObservableObject {
    @Published var exampleProperty: String = "Hello World!" {
        didSet {
            
        }
    }
    
    private var dependencies: HomePresenterDependenciesProtocol
    private let interactor: HomeInteractorProtocol
    
    init(dependencies: HomePresenterDependenciesProtocol, interactor: HomeInteractorProtocol) {
        self.dependencies = dependencies
        self.interactor = interactor
    }
}
