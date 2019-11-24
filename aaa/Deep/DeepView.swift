import SwiftUI

protocol DeepViewProtocol: DeepProtocol {
    
}

struct DeepView: View {
    @ObservedObject private var presenter: DeepPresenter
    
    var body: some View {
        Text("Hello world!")
        .onAppear {
            self.presenter.didReceiveEvent(.onAppear)
        }
    }

    init(delegate: DeepDelegate?) {
        self.presenter = DeepWireframe.makePresenter(delegate: delegate)
        presenter.didReceiveEvent(.viewDidInit)
    }
}

extension DeepView: DeepViewProtocol {
    
}

extension DeepView: DeepProtocol {
    
}

//#if DEBUG
//struct DeepView_Previews: PreviewProvider {
//    var delegate = ((DeepDelegateEvent) -> Void).self
//    static var previews: some View {
//        DeepView(delegate: delegate)
//    }
//}
//#endif
