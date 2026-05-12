//
//  GlassCard.swift
//  IOS-proj-2
//
//  Created by Majid on 08/05/2026.
//
import SwiftUI

struct GlassCard<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack(spacing: 12) {
            content
        }
        .padding(16)
        .glassEffect(in: .rect(cornerRadius: 20))
    }
}
