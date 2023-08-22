//
//  ContentView.swift
//  button-sample-code
//
//  Created by Vinay Devdikar on 22/08/23.
//

import SwiftUI

struct ContentView: View {
    @State var updatedString: String = "Button not  selected."
    var body: some View {
        NavigationView {
            VStack {
                Text(updatedString)
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundColor(.red)
                HStack {
                    Text("Simple Button")
                        .multilineTextAlignment(.leading)
                        .padding()
                    Button {
                        updatedString = "Simple Button selected.."
                    } label: {
                        Text("Hit me 😀!!")
                    }.padding()
                }
                HStack {
                    Text("Button with custom label")
                        .multilineTextAlignment(.leading)
                        .padding()
                    Button {
                        updatedString = "Custom label button selected."
                    } label: {
                        Label("Hit me", systemImage: "lightbulb")
                    }.padding()
                }
                HStack {
                    Text("Button with custom role")
                        .multilineTextAlignment(.leading)
                        .padding()
                    Button("Sign In",
                           role: .destructive,
                           action: {
                        updatedString = "Sign in button selected."
                    })
                }
                
                HStack {
                    Text("Link")
                        .padding()
                    /// For demo purposes, we are forced to unwrap this url variable. Being a responsible developer, I am not recommending this.
                    Link(destination: URL(string: "https://www.google.co.in/")!) {
                        Text("google.com ")
                    }.foregroundColor(.red)
                }
            }.padding()
                .navigationTitle("Types of buttons")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
