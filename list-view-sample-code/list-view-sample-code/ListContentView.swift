//
//  ContentView.swift
//  list-view-sample-code
//
//  Created by Vinay Devdikar on 14/08/23.
//

import SwiftUI

struct ListContentView: View {
    let fruitContent: [FruitSection] = Bundle.main.decode(with: [FruitSection].self, fileName: "content", extensionStr: "json") as! [FruitSection]
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(fruitContent) { menu in
                        Section(header: Text(menu.section), content: {
                            ForEach(menu.name, id: \.self) { fruitName in
                                Text("\(fruitName)")
                            }
                        })
                    }
                }.listStyle(.plain)
            }.navigationTitle("Fruits")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListContentView()
    }
}

extension Bundle {
    
    func decode(with classType: Decodable.Type, fileName: String, extensionStr: String) -> Decodable {
        guard let fileurl = Bundle.main.url(forResource: fileName, withExtension: extensionStr) else { fatalError("unable to find \(fileName).\(extensionStr)") }
        do {
            let jsonData = try Data(contentsOf: fileurl)
            let fruitContent = try JSONDecoder().decode(classType, from: jsonData)
            return fruitContent
        } catch {
            fatalError("unable to parse file \(error). kindly check \(fileurl)")
        }
    }
}
