//
//  ContentView.swift
//  curly-octo-spork
//
//  Created by Cameron Dudley on 8/1/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var reloadCount: Int = 0
    
    var body: some View {
        VStack {
            Button(action : {
                DispatchQueue.main.asyncAfter(deadline: .now()) {
                    self.reloadCount += 1;
                    
                }
            }) {
                Text("press me")
            }
            .padding()
            .background(Theme.bubblegum.mainColor)
            .cornerRadius(4)
            
            Text("count: \(reloadCount)")
                .padding()
                .background(Theme.yellow.mainColor)
                .cornerRadius(4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
