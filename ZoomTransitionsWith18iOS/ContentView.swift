//
//  ContentView.swift
//  ZoomTransitionsWith18iOS
//
//  Created by test on 8/25/24.
//

import SwiftUI

struct ContentView: View {
    @Namespace private var transitionNamespace
    let columns = [GridItem(.adaptive(minimum: 175))]
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(MyImage.samples) { photo in
                        NavigationLink(value: photo) {
                            Image(photo.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 175, height: 175)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .shadow(radius: 5)
                                .matchedTransitionSource(id: photo, in: transitionNamespace)
                        }
                    }
                }
            }
            .navigationDestination(for: MyImage.self) { image in
                DetailView(image: image)
                    .navigationTransition(.zoom(sourceID: image, in: transitionNamespace))
            }
            .navigationTitle("My Images")
            .padding()
            .ignoresSafeArea(edges: .bottom)
        }
    }
}

#Preview {
    ContentView()
}
