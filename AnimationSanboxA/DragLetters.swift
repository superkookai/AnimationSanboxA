//
//  DragLetters.swift
//  AnimationSanboxA
//
//  Created by Weerawut on 2/1/2569 BE.
//

import SwiftUI

struct DragLetters: View {
    let letters = Array("Hello SwiftUI")
    @State private var enable = false
    @State private var dragAmount = CGSize.zero
    var body: some View {
        HStack {
            ForEach(0..<letters.count, id: \.self) { i in
                Text(String(letters[i]))
                    .font(.title)
                    .padding(5)
                    .background(enable ? .blue : .red)
                    .offset(dragAmount)
                    .animation(.default.delay(Double(i)/20), value: dragAmount)
                    .animation(.default, value: enable)
            }
        }
        .padding(100)
        .gesture(
            DragGesture()
                .onChanged({ value in
                    dragAmount = value.translation
                })
                .onEnded({ _ in
                    dragAmount = .zero
                    enable.toggle()
                })
        )
    }
}

#Preview {
    DragLetters()
}
