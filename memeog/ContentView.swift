//
//  ContentView.swift
//  memeog
//
//  Created by Ashif Khan on 02/02/24.
//

import SwiftUI

enum EMOJI:String,CaseIterable{
    case 😆,😂,😇,🤨
}

struct ContentView: View {
    @State var selection : EMOJI = .😇
    var body: some View {
        NavigationView{
            VStack{
                Text(selection.rawValue)
                    .font(.system(size: 150))
                Picker("Select Emoji", selection: $selection, content: {
                    ForEach(EMOJI.allCases,id:\.self){
                        emoji in Text(emoji.rawValue)
                    }
                })
                .pickerStyle(.segmented)
            }
            .padding()
            .navigationTitle("Memoji")
        }
      
    }
}

#Preview {
    ContentView()
}
 
