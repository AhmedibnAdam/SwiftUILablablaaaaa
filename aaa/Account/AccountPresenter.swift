import Combine

protocol AccountPresenterProtocol: class {
    var viewModel: AccountViewModel { get }
    func didReceiveEvent(_ event: AccountEvent)
    func didTriggerAction(_ action: AccountAction)
}

final class AccountPresenter: ObservableObject {
    private let dependencies: AccountPresenterDependenciesProtocol
    private let interactor: AccountInteractorProtocol
    private var delegate: AccountDelegate?
    
    private(set) var viewModel: AccountViewModel {
        didSet {
            objectWillChange.send()
        }
    }
    
    let objectWillChange = PassthroughSubject<Void, Never>()
    
    init(dependencies: AccountPresenterDependenciesProtocol,
         interactor: AccountInteractorProtocol,
         delegate: AccountDelegate?) {
        self.dependencies = dependencies
        self.interactor = interactor
        self.delegate = delegate
        
        viewModel = AccountViewModel()
    }
}

extension AccountPresenter: AccountPresenterProtocol {
    func didReceiveEvent(_ event: AccountEvent) {
        switch event {
            case .onAppear:
                debugPrint("onAppear")
        case .viewDidInit:
            print("did init")
        }
    }

    func didTriggerAction(_ action: AccountAction) {

    }
}
