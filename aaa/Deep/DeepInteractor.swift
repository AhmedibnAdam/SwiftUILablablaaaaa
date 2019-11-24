import Foundation

protocol DeepInteractorProtocol {
	
}

final class DeepInteractor {
    private let dependencies: DeepInteractorDependenciesProtocol
    
    init(dependencies: DeepInteractorDependenciesProtocol) {
        self.dependencies = dependencies
    }
}

extension DeepInteractor: DeepInteractorProtocol {
	
}
