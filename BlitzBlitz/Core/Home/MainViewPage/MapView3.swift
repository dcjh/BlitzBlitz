//
//  MapView3.swift
//  BlitzBlitz
//
//  Created by Darrick Chew on 21/1/24.
//

import SwiftUI

struct MapView3: View {
    var body: some View {
        StudyMapViewRepresentable3()
            .ignoresSafeArea()
            .frame(width: 393, height: 292)
            .padding(.bottom, UIScreen.main.bounds.height - 351)
    }
}

#Preview {
    MapView3()
}
