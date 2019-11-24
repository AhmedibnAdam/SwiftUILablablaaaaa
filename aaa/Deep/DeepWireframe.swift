import Foundation

protocol DeepWireframeProtocol {
    static func makePresenter(delegate: DeepDelegate?) -> DeepPresenter
}

struct DeepWireframe: DeepWireframeProtocol {
    static func makePresenter(delegate: DeepDelegate?) -> DeepPresenter {
        let interactorDependencies = DeepInteractorDependencies()
        let interactor = DeepInteractor(dependencies: interactorDependencies)

        let presenterDependencies = DeepPresenterDependencies()
        let presenter = DeepPresenter(dependencies: presenterDependencies,
                                                               interactor: interactor,
                                                               delegate: delegate)
        return presenter
    }
}
