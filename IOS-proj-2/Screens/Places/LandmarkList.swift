//
//  LandmarkList.swift
//  IOS-proj-2
//
//  Created by Majid on 09/05/2026.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks,id: \.id){landmark in
            LandmarkRow(landmark: landmark)
        }.padding(.vertical,10)
    }
}

#Preview {
    LandmarkList()
}
