//
//  ContentView.swift
//  lable-sample-code
//
//  Created by Vinay Devdikar on 15/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                
                /// Label with icon
                Text("Label with icon")
                    .font(.title3)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                ZStack {
                    Color.gray
                        .ignoresSafeArea()
                    Label {
                        Text("Network")
                            .bold()
                            .foregroundColor(.accentColor)
                    } icon: {
                        Image(systemName: "globe")
                            .symbolVariant(.fill)
                            .foregroundColor(.accentColor)
                    }
                }.padding([.bottom], 20.0)
                
                
                /// Label with default style
                Text("Label with default style")
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .font(.title3)
                ZStack {
                    Color.gray
                        .ignoresSafeArea()
                    VStack(alignment: .leading) {
                        Label("Network", systemImage: "globe")
                            .labelStyle(.titleOnly)
                        Label("Network", systemImage: "globe")
                            .labelStyle(.iconOnly)
                        Label("Network", systemImage: "globe")
                            .labelStyle(.titleAndIcon)
                    }
                }.padding([.bottom], 20.0)
                
                /// Lable with custom styling
                Text("Lable with custom styling")
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .font(.title3)
                
                ZStack {
                    Color.gray
                        .ignoresSafeArea()
                    Label("Network", systemImage: "globe")
                        .labelStyle(GreenBorderedLabelStyle())
                }.padding([.bottom], 20.0)
                
                /// Plain Text with custom style
                Text("Plain Text with custom style")
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .font(.title3)
                ZStack {
                    Color.gray
                        .ignoresSafeArea()
                    HStack(alignment: .center) {
                        Image(systemName: "globe")
                            .imageScale(.large)
                            .foregroundColor(.accentColor)
                        Text("Hello, world!")
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }.padding([.bottom], 20.0)
                
            }.padding([.leading,.trailing], 20.0)
                .navigationTitle("Labels")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct GreenBorderedLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        Label(configuration)
            .border(Color.green)
            .background(Color.red)
    }
}
