//
//  HomeView.swift
//  IOS-proj-2
//
//  Created by Majid on 11/05/2026.
//

import SwiftUI

struct HomeView: View {

    @State private var selection: Tab = .featured

    enum Tab {
        case featured
        case list
        case animations
        case settings
    }

    var body: some View {

        TabView(selection: $selection) {

            NavigationStack {

                CategoriesHomeView()
                    .environment(ModelData())
                    .navigationTitle("Featured")

                    #if os(iOS)
                        .navigationBarTitleDisplayMode(.inline)
                    #endif

                    .toolbar {

                        ToolbarItem(placement: .topBarTrailing) {

                            NavigationLink(
                                destination: ProfileView()
                            ) {

                                Image(systemName: "person.crop.circle")
                            }
                        }
                    }
            }
            .tabItem {
                Label("Featured", systemImage: "star")
            }
            .tag(Tab.featured)

            // MARK: List

            NavigationStack {

                LandmarkList()
                    .navigationTitle("Landmarks")

                    #if os(iOS)
                        .navigationBarTitleDisplayMode(.inline)
                    #endif

                    .toolbar {

                        ToolbarItem(placement: .topBarTrailing) {

                            NavigationLink(
                                destination: ProfileView()
                            ) {

                                Image(systemName: "person.crop.circle")
                            }
                        }
                    }
            }
            .tabItem {
                Label("List", systemImage: "list.bullet")
            }
            .tag(Tab.list)

            // MARK: Hikes

            NavigationStack {

                HikesView()
                    .navigationTitle("Animations")

                    #if os(iOS)
                        .navigationBarTitleDisplayMode(.inline)
                    #endif
            }
            .tabItem {
                Label("Animations", systemImage: "chart.bar")
            }
            .tag(Tab.animations)

            // MARK: Settings

            NavigationStack {

                SettingsView()
                    .navigationTitle("Settings")

                    #if os(iOS)
                        .navigationBarTitleDisplayMode(.inline)
                    #endif
            }
            .tabItem {
                Label("Settings", systemImage: "gear")
            }
            .tag(Tab.settings)
        }
    }
}
#Preview {
    HomeView()
}
