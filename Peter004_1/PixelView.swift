//
//  PixelView.swift
//  Peter004_1
//
//  Created by DONG SHENG on 2022/6/17.
//

import SwiftUI

// 一單位 的 像素圖 (正方形)
struct PixelView: View {
    
    let color: Color // 顏色
    let size: CGFloat // 大小
    
    var body: some View {
        Rectangle()
            .frame(width: size, height: size)
            .foregroundColor(color) //
    }
}

struct PixelView_Previews: PreviewProvider {
    static var previews: some View {
        PixelView(color: .yellow, size: 200)
    }
}
