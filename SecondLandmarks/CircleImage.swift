//
//  CircleImage.swift
//  SecondLandmarks
//
//  Created by LPT 531 on 20/01/20.
//  Copyright © 2020 IJNIC Lohot. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
        .resizable()
        .frame(width: 150, height: 150)
        .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
