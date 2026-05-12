A SwiftUI iOS application built for learning SwiftUI architecture and layouts.
                                        
## Features
   - SwiftUI
   - NavigationStack
   - MVVM
   - JSON Parsing
                                        
## Structure
  - Screens
  - Widgets
  - Models
  - Resources
                                        
## Architecture

  ```text
IOS-proj-2
├── App
│    ├── IOS_proj_2App.swift
│    └── RootView.swift
│
├── Screens
│    ├── Home
│    │    ├── HomeView.swift
│    │    └── HomeViewModel.swift
│    │
│    ├── Details
│    │    ├── DetailsView.swift
│    │    └── DetailsViewModel.swift
│    │
│    └── Profile
│         ├── ProfileView.swift
│         └── ProfileViewModel.swift
│
├── Widgets
│    ├── CustomButton.swift
│    ├── CardView.swift
│    └── HeaderView.swift
│
├── Models
│    ├── Landmark.swift
│    └── User.swift
│
├── Resources
│    ├── landmarkData.json
│    └── fonts
│
├── Services
│    ├── NetworkManager.swift
│    └── APIService.swift
│
└── Utils
     ├── Extensions
     └── Helpers
  ```

## Screenshots

<div style="display: flex; flex-wrap: wrap; gap: 10px;">
  <img src="Screenshots/Home.png" alt="Home Screen" width="200" height="400" />
  <img src="Screenshots/ListView.png" alt="List View Screen" width="200" height="400" />
  <img src="Screenshots/PlaceDetail.png" alt="Details Screen" width="200" height="400" />
  <img src="Screenshots/Hikes.png" alt="Hikes Screen" width="200" height="400" />
  <img src="Screenshots/Fav.png" alt="Favorites Screen" width="200" height="400" />
</div>
