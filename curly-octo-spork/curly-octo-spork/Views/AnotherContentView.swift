//
//  AnotherContentView.swift
//  curly-octo-spork
//
//  Created by Cameron Dudley on 8/1/23.
//

import SwiftUI

struct AnotherContentView: View {
    
    @State var count: Int = 0
    
    var body: some View {
        VStack {
            HStack {
                Label("Your Cart", systemImage: "cart")
//                    .background(Theme.bubblegum.mainColor)
                
                Button(action: {
                    self.count += 1;
                }, label: {
                    Image(systemName: "plus")
                        .padding(0)
                })
//                .background(Theme.buttercup.mainColor)
                
                Button(action: {
                    self.count -= 1
                }, label: {
                    Image(systemName: "minus")
                })
//                .background(Theme.buttercup.mainColor)
                
                
            }
        }
    }
}

struct AnotherContentView_Previews: PreviewProvider {
    static var previews: some View {
        AnotherContentView()
    }
}
