//
//  ContentView.swift
//  curly-octo-spork
//
//  Created by Cameron Dudley on 8/1/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var user: User = User()
    
    var body: some View {
        VStack {
    
            VStack {
                Form {
                    TextField(
                        "username",
                        text: $user.username
                    )
                    .disableAutocorrection(true)
                    .textInputAutocapitalization(.never)

                    TextField(
                        "email",
                        text: $user.emailAddress
                    )
                    .disableAutocorrection(true)
                    .textInputAutocapitalization(.never)
                    
                    SecureField(
                        "password",
                        text: $user.password
                    )
                    .disableAutocorrection(true)
                    .textInputAutocapitalization(.never)

                }
            }
            
            
            NavigationStack {
                NavigationLink(destination: AnotherContentView()){
                    Text("Click here")
                }
                .navigationTitle("Fill Cart")
                .background(Theme.buttercup.mainColor)
            }
            
            
            Spacer()
            
            Label("\(user.username)", systemImage: "")
            
            Label("\(user.emailAddress)", systemImage: "")
            
            Label("\(user.password)", systemImage: "")
            
            
        }
        .padding()
    
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
