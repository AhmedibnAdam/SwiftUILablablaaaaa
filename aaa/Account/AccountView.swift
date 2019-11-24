import SwiftUI

protocol AccountViewProtocol: AccountProtocol {
    
}

struct AccountView: View {
    @ObservedObject private var presenter: AccountPresenter
    
    var body: some View {
        Text("Hello world!")
        .onAppear {
            self.presenter.didReceiveEvent(.onAppear)
        }
    }

    init(delegate: AccountDelegate?) {
        self.presenter = AccountWireframe.makePresenter(delegate: delegate)
        presenter.didReceiveEvent(.viewDidInit)
    }
}

extension AccountView: AccountViewProtocol {
    
}

extension AccountView: AccountProtocol {
    
}

//#if DEBUG
//struct AccountView_Previews: PreviewProvider {
//    static var previews: some View {
//        AccountView()
//    }
//}
//#endif
