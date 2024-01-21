//
//  HomeView.swift
//  Study Buddy
//
//  Created by Darrick Chew on 19/1/24.
//

import SwiftUI

struct MapView: View {
    var body: some View {
        StudyMapViewRepresentable()
            .ignoresSafeArea()
            .frame(width: 393, height: 290)
            .padding(.bottom, UIScreen.main.bounds.height - 351)
        
    }
}

#Preview {
    MapView()
}
