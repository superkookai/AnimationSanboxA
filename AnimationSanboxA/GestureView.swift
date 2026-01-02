//
//  GestureView.swift
//  AnimationSanboxA
//
//  Created by Weerawut on 2/1/2569 BE.
//

import SwiftUI

struct GestureView: View {
    @State private var dragAmount: CGSize = .zero
    
    var body: some View {
        Color.red
            .frame(width: 300, height: 200)
            .clipShape(.rect(cornerRadius: 10))
            .padding(200)
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        dragAmount = value.translation
                    })
                    .onEnded({ _ in
                        withAnimation(.spring) {
                            dragAmount = .zero
                        }
                    })
            )
    }
}

#Preview {
    GestureView()
}
