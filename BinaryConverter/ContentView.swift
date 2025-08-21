//
//  ContentView.swift
//  BinaryConverter
//
//  Created by David Nguyen on 21/8/25.
//

import SwiftUI

struct ContentView: View {
    @State private var inputNumber = ""
    @State private var binaryResult = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("Decimal → Binary Converter")
                .font(.title2)
                .bold()

            TextField("Nhập số thập phân", text: $inputNumber)
                .keyboardType(.numberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Convert") {
                if let number = Int(inputNumber) {
                    binaryResult = String(number, radix: 2)
                } else {
                    binaryResult = "Input không hợp lệ"
                }
            }
            .buttonStyle(.borderedProminent)

            Text("Kết quả: \(binaryResult)")
                .font(.headline)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
