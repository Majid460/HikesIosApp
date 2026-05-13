//
//  LandmarkRow.swift
//  IOS-proj-2
//
//  Created by Majid on 09/05/2026.
//
import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            let isFavorite = landmark.isFavorite
            if isFavorite {
                FavoriteView(isSet: isFavorite, showText: false)
                    .padding(
                        .trailing,
                        5
                    )
            }

        }
    }
}

#Preview {
    Group {
        LandmarkRow(landmark: ModelData().landmarks[0])
        LandmarkRow(landmark: ModelData().landmarks[1])
    }

}
