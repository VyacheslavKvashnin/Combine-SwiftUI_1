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
            TextField("Enter Some Text...", text: $viewModel.someText)
                .textFieldStyle(.roundedBorder)
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
