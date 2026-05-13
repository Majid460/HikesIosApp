//
//  FavoriteView.swift
//  IOS-proj-2
//
//  Created by Majid on 10/05/2026.
//

import SwiftUI

struct FavoriteView: View {
    var isSet: Bool
    var showText: Bool = true
    var onToggle: () -> Void = {}
    var body: some View {
        Button {
            withAnimation(
                .spring(
                    response: 0.3,
                    dampingFraction: 0.5
                )
            ) {

                onToggle()
            }

        } label: {
            HStack {
                if showText {
                    Text(isSet ? "Remove from favorites" : "Add to favorites")
                        .padding(.trailing, 10)
                }
                Image(systemName: isSet ? "star.fill" : "star")
                    .foregroundStyle(isSet ? Color.yellow : Color.primary)
                    .font(.title3)
                    .scaleEffect(isSet ? 1.2 : 1.0)
                    .animation(.spring(), value: isSet)
            }
        }
    }
}
