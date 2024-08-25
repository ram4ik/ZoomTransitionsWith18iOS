//
//  MyImage.swift
//  ZoomTransitionsWith18iOS
//
//  Created by test on 8/25/24.
//

import Foundation

struct MyImage: Identifiable, Hashable {
    var id: String { imageName }
    var imageName: String
    var name: String
    var info: String
    
    static var samples: [MyImage] {
        [
            MyImage(imageName: "turkey", name: "name", info: "info"),
            MyImage(imageName: "turkey2", name: "name", info: "info"),
            MyImage(imageName: "turkey3", name: "name", info: "info"),
            MyImage(imageName: "turkey4", name: "name", info: "info"),
            MyImage(imageName: "turkey5", name: "name", info: "info"),
        ]
    }
}

