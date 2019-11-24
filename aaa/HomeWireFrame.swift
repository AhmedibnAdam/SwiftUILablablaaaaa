//
//  HomeWireFrame.swift
//
//  Created by Sebastian Boldt on 03.11.19.
//  Copyright © 2019 Sebastian Boldt. All rights reserved.
//

import SwiftUI

protocol HomeWireFrameProtocol {
   static func makeHomeView() -> AnyView
}

struct HomeWireFrame: HomeWireFrameProtocol {
    static func makeHomeView() -> AnyView {
        
        let interactorDependencies = HomeInteractorDependencies()
        let interactor = HomeInteractor(dependencies: interactorDependencies)
        
        let presenterDependencies = HomePresenterDepenencies()
        let presenter = HomePresenter(dependencies: presenterDependencies, interactor: interactor)
        
        let viewDependencies = HomeViewDependencies()
        let view = HomeView(presenter: presenter, dependencies: viewDependencies)
        
        return AnyView(view)
    }
}
