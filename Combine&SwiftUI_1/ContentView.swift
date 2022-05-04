//
//  ContentView.swift
//  Combine&SwiftUI_1
//
//  Created by Вячеслав Квашнин on 04.05.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        VStack {
            Section {
                TextField("Enter Some Text...", text: $viewModel.someText)
                    .textFieldStyle(.roundedBorder)
                
                TextField("Enter Second Text...", text: $viewModel.secondText)
            }
                .padding()
            
            Text(viewModel.otherText)
                .font(.largeTitle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
