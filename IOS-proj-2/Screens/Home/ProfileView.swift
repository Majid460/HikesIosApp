import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "person.crop.circle.fill")
                .font(.system(size: 80))
                .foregroundStyle(.secondary)
            Text("Profile")
                .font(.largeTitle)
                .bold()
            Text("This is your profile page.")
                .foregroundStyle(.secondary)
        }
        .padding()
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack { ProfileView() }
}
