//
//  ViewModel.swift
//  Combine&SwiftUI_1
//
//  Created by Вячеслав Квашнин on 04.05.2022.
//

import Combine

class ViewModel: ObservableObject {
    @Published var someText = ""
    @Published var secondText = ""
    
    @Published var otherText = "🌺"
    
    init() {
        $someText
            .map { $0.isEmpty ? "❌" : "✅" }
            .assign(to: &$otherText)
    }
}
