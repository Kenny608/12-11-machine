//
//  wordLearn.swift
//  12-11
//
//  Created by Kenny Luchau on 12/11/23.
//

import SwiftUI
import NaturalLanguage
struct wordLearn: View {
    @State var language = ""
    @State var message = ""
    var body: some View {
        VStack {
            TextField("Type foreign text here", text: $language)
                .disableAutocorrection(true)
                .padding()
            Text("Language = \(message)")
                .padding()
            Button {
                if let prediction = predictLanguage(text: language) {
                    message = prediction
                }
            } label: {
                Text("Identify Language")
            }
        }
    }
    func predictLanguage(text: String) -> String? {
        let locale = Locale(identifier: "en")
        let recognizer = NLLanguageRecognizer()
        recognizer.processString(text)
        guard let language = recognizer.dominantLanguage else {
            return "Unknown language"
        }
        return locale.localizedString(forLanguageCode: language.rawValue)
    }
}
