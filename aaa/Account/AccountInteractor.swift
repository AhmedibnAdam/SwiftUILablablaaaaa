import Foundation

protocol AccountInteractorProtocol {
	
}

final class AccountInteractor {
    private let dependencies: AccountInteractorDependenciesProtocol
    
    init(dependencies: AccountInteractorDependenciesProtocol) {
        self.dependencies = dependencies
    }
}

extension AccountInteractor: AccountInteractorProtocol {
	
}
