//
//  HomeView.swift
//  Vegamins
//
//  Created by Sebastian Boldt on 03.11.19.
//  Copyright © 2019 Sebastian Boldt. All rights reserved.
//

import SwiftUI

protocol HomeViewProtocol {
    
}

struct HomeView: View, HomeViewProtocol {
    @ObservedObject private var presenter: HomePresenter
    private let dependencies: HomeViewDependenciesProtocol
    
    var body: some View {
        Text(presenter.exampleProperty)
    }
    
    init(presenter: HomePresenter,
         dependencies: HomeViewDependenciesProtocol) {
        self.presenter = presenter
        self.dependencies = dependencies
    }
}

struct AboutMeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeWireFrame.makeHomeView()
    }
}
