import Combine

protocol DeepPresenterProtocol: class {
    var viewModel: DeepViewModel { get }
    func didReceiveEvent(_ event: DeepEvent)
    func didTriggerAction(_ action: DeepAction)
}

final class DeepPresenter: ObservableObject {
    private let dependencies: DeepPresenterDependenciesProtocol
    private let interactor: DeepInteractorProtocol
    private var delegate: DeepDelegate?
    
    private(set) var viewModel: DeepViewModel {
        didSet {
            objectWillChange.send()
        }
    }
    
    let objectWillChange = PassthroughSubject<Void, Never>()
    
    init(dependencies: DeepPresenterDependenciesProtocol,
         interactor: DeepInteractorProtocol,
         delegate: DeepDelegate?) {
        self.dependencies = dependencies
        self.interactor = interactor
        self.delegate = delegate
        
        viewModel = DeepViewModel()
    }
}

extension DeepPresenter: DeepPresenterProtocol {
    func didReceiveEvent(_ event: DeepEvent) {
        switch event {
            case .onAppear:
                debugPrint("onAppear")
        case .viewDidInit:
            debugPrint("onAppear")
        }
    }

    func didTriggerAction(_ action: DeepAction) {

    }
}
