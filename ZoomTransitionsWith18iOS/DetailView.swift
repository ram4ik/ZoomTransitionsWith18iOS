//
//  DetailView.swift
//  ZoomTransitionsWith18iOS
//
//  Created by test on 8/25/24.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) var dismiss
    let image: MyImage
    var body: some View {
        Image(image.imageName)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea()
            .navigationBarBackButtonHidden(true)
            .toolbar {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.title)
                        .foregroundStyle(.white)
                }
            }
    }
}
