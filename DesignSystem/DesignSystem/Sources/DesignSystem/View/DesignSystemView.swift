
import Foundation
import SwiftUI

public struct DesignSystemView<VM>: View where VM: DesignSystemViewModelProtocol {

    // MARK: - Properties

    @ObservedObject var viewModel: VM

    // MARK: - Initialize

    public init( viewModel: VM) {
        self.viewModel = viewModel    
    }

    public var body: some View {
        Text("DesignSystem View")
    }
}

struct DesignSystemView_Previews: PreviewProvider {
    static var previews: some View {
        DesignSystemView(viewModel: DesignSystemViewModel(configuration: configMock(), bundleMainApp: .main))
    }
}

class configMock: DesignSystemConfigurationProtocol {
    var config: [String : AnyObject] = ["Any" : "Any" as AnyObject]
}