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