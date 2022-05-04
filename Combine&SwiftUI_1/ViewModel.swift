//
//  ViewModel.swift
//  Combine&SwiftUI_1
//
//  Created by Вячеслав Квашнин on 04.05.2022.
//

import Combine

class ViewModel: ObservableObject {
    @Published var someText: String = ""
    @Published var otherText: String = "🌺"
    
    init() {
        $someText
            .map { $0.isEmpty ? "❌" : "✅" }
            .assign(to: &$otherText)
    }
}
