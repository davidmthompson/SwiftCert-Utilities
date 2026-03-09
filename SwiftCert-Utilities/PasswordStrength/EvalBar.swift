//
//  EvalBar.swift
//  SwiftCert-Utilities
//
//  Created by Student on 3/9/26.
//
import SwiftUI

struct EvalBar: View {
    @Binding var password: String
    
    var progress: Double {
        min(Double(password.count) * 0.1, 1.0)
    }
    
    var body: some View {
        VStack {
            Text("Your Password Is")
                .font(.title3)
            
            Text(progressText)
                .font(.headline)
                .foregroundColor(progressColor)
            
            ProgressView(value: progress)
                .progressViewStyle(.linear)
                .tint(progressColor)
                .padding()
        }
    }
    
    var progressColor: Color {
        if progress > 0.8 { return .green }
        if progress > 0.5 { return .yellow }
        if progress > 0.2 { return .orange }
        return .red
    }
    
    var progressText: String {
        if progress > 0.8 { return "Excellent" }
        if progress > 0.5 { return "Strong" }
        if progress > 0.2 { return "Okay" }
        return "Bad"
    }
}
