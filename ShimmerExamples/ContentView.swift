//
//  ContentView.swift
//  ShimmerExamples
//
//  Created by Иван Легенький on 26.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Hi there")
                    .font(.title)
                    .fontWeight(.black)
                    .shimmer(
                        .init(
                            tint: .black.opacity(0.5),
                            highlight: .black,
                            blur: 5
                        )
                    )
//                    .padding()
//                    .background {
//                        RoundedRectangle(cornerRadius: 15, style: .continuous)
//                            .fill(.purple.gradient)
//                    }
                
                HStack {
                    Circle()
                        .frame(width: 55, height: 55)
                    
                    VStack(alignment: .leading, spacing: 6) {
                        RoundedRectangle(cornerRadius: 4)
                            .frame(height: 10)
                        
                        RoundedRectangle(cornerRadius: 4)
                            .frame(height: 10)
                            .padding(.trailing, 50)
                        
                        RoundedRectangle(cornerRadius: 4)
                            .frame(height: 10)
                            .padding(.trailing, 100)
                    }
                }
                .padding(15)
                .padding(.horizontal, 30)
                .shimmer(.init(
                    tint: .gray.opacity(0.3),
                    highlight: .white,
                    blur: 5
                ))
            }
            .navigationTitle("Shimmer effect")
        }
    }
}

#Preview {
    ContentView()
}
