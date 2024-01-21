

import SwiftUI

struct CurrentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                BottomBarView()
            } else {
                Login_View()
            }
        }
    }
}

#Preview {
    CurrentView()
}
