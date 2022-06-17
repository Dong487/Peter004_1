//
//  HomeView.swift
//  Peter004_1
//
//  Created by DONG SHENG on 2022/6/17.
//

import SwiftUI

// 利用 迴圈 來印出 馬力歐
struct HomeView: View {
    
    let rows = 16        // 行
    let columns = 16     // 列
    let size: CGFloat = 20
    
    // ColorArray
    // 2維陣列 color[][]
    // [[ ]] -> 可以想成一個實際的面 相對的位置 儲存對應的顏色 16 x 16
    // 馬力歐 的組成 三個主題色 ＋ 透明 -> 可以到Assets 更改顏色 (也可以改用宣告的 可以用func 呼叫更動)
    let heliBlocks: [[Color]] = [
        [.clear, .clear, .clear, .clear, .clear, Color("Color1"), Color("Color1"), Color("Color1"), Color("Color1"), Color("Color1"), .clear, .clear, .clear, .clear, .clear, .clear],
        [.clear, .clear, .clear, .clear,  Color("Color1"), Color("Color1"), Color("Color1"), Color("Color1"), Color("Color1"),  Color("Color1"), Color("Color1"), Color("Color1"), Color("Color1"), .clear, .clear, .clear],
        [.clear, .clear, .clear, .clear, Color("Color2"), Color("Color2"), Color("Color2"), Color("Color3"), Color("Color3"), Color("Color2"), Color("Color3"), .clear, .clear, .clear, .clear, .clear],
        [.clear, .clear, .clear, Color("Color2"), Color("Color3"), Color("Color2"), Color("Color3"), Color("Color3"), Color("Color3"), Color("Color2"), Color("Color3"), Color("Color3"), Color("Color3"), .clear, .clear, .clear],
        [.clear, .clear, .clear, Color("Color2"), Color("Color3"), Color("Color2"), Color("Color2"), Color("Color3"), Color("Color3"), Color("Color3"), Color("Color2"), Color("Color3"), Color("Color3"), Color("Color3"), .clear, .clear],
        [.clear, .clear, .clear, Color("Color2"), Color("Color2"), Color("Color3"), Color("Color3"), Color("Color3"), Color("Color3"), Color("Color2"), Color("Color2"), Color("Color2"), Color("Color2"), .clear, .clear, .clear],
        [.clear, .clear, .clear, .clear, .clear, Color("Color3"), Color("Color3"), Color("Color3"), Color("Color3"), Color("Color3"), Color("Color3"), Color("Color3"), .clear, .clear, .clear, .clear],
        [.clear, .clear, .clear, .clear, Color("Color2"), Color("Color2"), Color("Color1"), Color("Color2"), Color("Color2"), Color("Color2"),  .clear, .clear, .clear, .clear, .clear, .clear],
        [.clear, .clear, .clear, Color("Color2"), Color("Color2"), Color("Color2"), Color("Color1"), Color("Color2"), Color("Color2"), Color("Color1"), Color("Color2"), Color("Color2"), Color("Color2"), .clear, .clear, .clear],
        [.clear, .clear, Color("Color2"), Color("Color2"), Color("Color2"), Color("Color2"), Color("Color1"), Color("Color1"), Color("Color1"), Color("Color1"),  Color("Color2"), Color("Color2"), Color("Color2"), Color("Color2"), .clear, .clear],
        [.clear, .clear, Color("Color3"), Color("Color3"), Color("Color2"), Color("Color1"), Color("Color3"), Color("Color1"), Color("Color1"), Color("Color3"), Color("Color1"), Color("Color2"), Color("Color3"), Color("Color3"), .clear, .clear],
        [.clear, .clear, Color("Color3"), Color("Color3"), Color("Color3"), Color("Color1"), Color("Color1"), Color("Color1"), Color("Color1"), Color("Color1"), Color("Color1"), Color("Color3"), Color("Color3"), Color("Color3"), .clear, .clear],
        [.clear, .clear, Color("Color3"), Color("Color3"), Color("Color1"), Color("Color1"), Color("Color1"), Color("Color1"), Color("Color1"), Color("Color1"), Color("Color1"), Color("Color1"), Color("Color3"), Color("Color3"), .clear, .clear],
        [.clear, .clear, .clear, .clear, Color("Color1"), Color("Color1"), Color("Color1"), Color("Color1"), Color("Color1"), Color("Color1"), Color("Color1"), Color("Color1"), .clear, .clear, .clear, .clear],
        [.clear, .clear, .clear ,Color("Color2"), Color("Color2"), Color("Color2"), .clear, .clear, .clear, .clear, Color("Color2"), Color("Color2"), Color("Color2"), .clear, .clear, .clear],
        [.clear, .clear, Color("Color2"), Color("Color2"), Color("Color2"), Color("Color2"), .clear, .clear, .clear, .clear, Color("Color2"), Color("Color2"), Color("Color2"), Color("Color2"), .clear, .clear],
    ]
    

    var body: some View {
        VStack(spacing: 0){
            // 測試 -> ForEach(0...self.rows) 現在這邊為 6 (直的) : 因為是 Vstack 所以由上而下
            //
            ForEach((0...self.rows - 1), id: \.self){ row in
                HStack(spacing: 0){
                    // 這邊 則相反 搭配Hstack ForEach(0...self.columns - 1)5個 由左至右
                    ForEach((0...self.columns - 1), id: \.self){ column in
                        VStack(spacing: 5){
                            // 2維陣列 找對應顏色
                            PixelView(color: self.heliBlocks[row][column], size: size)
                        }
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
