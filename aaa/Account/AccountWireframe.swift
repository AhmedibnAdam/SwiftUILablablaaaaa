import Foundation

protocol AccountWireframeProtocol {
    static func makePresenter(delegate: AccountDelegate?) -> AccountPresenter
}

struct AccountWireframe: AccountWireframeProtocol {
    static func makePresenter(delegate: AccountDelegate?) -> AccountPresenter {
        let interactorDependencies = AccountInteractorDependencies()
        let interactor = AccountInteractor(dependencies: interactorDependencies)

        let presenterDependencies = AccountPresenterDependencies()
        let presenter = AccountPresenter(dependencies: presenterDependencies,
                                                               interactor: interactor,
                                                               delegate: delegate)
        return presenter
    }
}
