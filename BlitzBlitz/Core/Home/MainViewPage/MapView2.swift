//
//  MapView2.swift
//  BlitzBlitz
//
//  Created by Darrick Chew on 21/1/24.
//

import SwiftUI

struct MapView2: View {
    
    var body: some View {
        StudyMapViewRepresentable2()
            .ignoresSafeArea()
            .frame(width: 393, height: 292)
            .padding(.bottom, UIScreen.main.bounds.height - 351)
    }
}

#Preview {
    MapView2()
}
