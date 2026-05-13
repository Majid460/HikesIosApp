//
//  CategoryRow.swift
//  IOS-proj-2
//
//  Created by Majid on 11/05/2026.
//

import SwiftUI


struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items,id:\.self) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark,
                                           onToggle: {})
                        } label: {
                            CategoryItem(landmark: landmark)
                                .padding(.bottom,5)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}


#Preview {
    let landmarks = ModelData().landmarks
    return CategoryRow(
        categoryName: landmarks[0].category.rawValue,
        items: Array(landmarks.prefix(3))
    )
}

