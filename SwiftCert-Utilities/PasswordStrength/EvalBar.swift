//
//  EvalBar.swift
//  SwiftCert-Utilities
//
//  Created by Student on 3/9/26.
//

import SwiftUI



struct EvalBar: View {
  
  @State private var password: String = ""
  @State private var progress: Double = 0.1
  
    var body: some View {
        VStack {
          
        Text("Your Password Is")
            .font(.title3)
          
          Text(progressText)
            .font(.headline)
          
        ProgressView(value: progress)
            .progressViewStyle(.linear)
            .tint(progressColor)
            .padding()
          
         
          
          Button("Increase Progress") {
            progress += 0.1
          }
      }
    }
  
  var progressColor: Color {
    if progress > 0.9 {
      return .green
    } else if progress < 0.3 {
      return .red
    } else if progress < 0.3{
      return .orange
    } else {
      return .yellow
    }
  }
  
  var progressText: String {
    if progress > 0.9 {
      return "Excellent"
    } else if progress < 0.3 {
      return "Bad"
    } else if progress < 0.5{
      return "Okay"
    } else {
      return "Strong"
    }
  }
  
}

#Preview {
    EvalBar()
}
