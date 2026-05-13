//
//  CategoriesHomeView.swift
//  IOS-proj-2
//
//  Created by Majid on 11/05/2026.
//

import SwiftUI

struct CategoriesHomeView: View {
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        List {
            modelData.features[0].image
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .clipped()
                .listRowInsets(EdgeInsets())

            ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                CategoryRow(categoryName: key, items: modelData.categories[key]!)
            }
            .listRowInsets(EdgeInsets())
        }
        .listStyle(.inset)
        .navigationTitle("Featured")
    }
}

#Preview {
    CategoriesHomeView()
        .environment(ModelData())

}
