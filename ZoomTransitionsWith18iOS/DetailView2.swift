//
//  DetailView2.swift
//  ZoomTransitionsWith18iOS
//
//  Created by test on 8/25/24.
//

import SwiftUI

struct DetailView2: View {
    let image: MyImage
    let transitionName: Namespace.ID
    @State private var showFull = false
    var body: some View {
        VStack {
            Image(image.imageName)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(radius: 10)
                .matchedTransitionSource(id: image, in: transitionName)
                .onTapGesture {
                    showFull.toggle()
                }
                .fullScreenCover(isPresented: $showFull) {
                    NavigationStack {
                        DetailView(image: image)
                            .navigationTransition(.zoom(sourceID: image, in: transitionName))
                    }
                }
            Text(image.name)
                .font(.title)
            Text(image.info)
            Spacer()
        }
        .navigationTransition(.zoom(sourceID: image, in: transitionName))
        .padding()
    }
}
