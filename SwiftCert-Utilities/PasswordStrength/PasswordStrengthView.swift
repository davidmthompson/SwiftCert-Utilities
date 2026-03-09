//
//  PasswordStrengthView.swift
//  SwiftCert-Utilities
//
//  Created by david thompson on 3/9/26.
//

import SwiftUI

struct PasswordStrengthView: View {
    @State private var passwordText: String = ""
    
    var body: some View {
        Image("Logo")
            .resizable()
            .frame(width: 200, height: 200)
        Text("Smart Passwords")
            .fontWeight(.bold)
            .font(.title)
        Text("Zero Stress")
            .fontWeight(.bold)
            .font(.title)
     
        Divider()
            .frame(height: 3)
            .background(Color.black)
 
        EvalBar()
        .padding()
        
        Divider()
            .frame(height: 3)
            .background(Color.black)
  

        Label("What Is Your Password", systemImage: "lock.fill")
            .font(.title2)
            .padding()
        
        TextField("Enter password here", text: $passwordText)
            .textFieldStyle(.roundedBorder)
            .padding()
        
        Button("Check Password"){
            
        }
        Spacer()
        
        
        
    }
}

#Preview {
    PasswordStrengthView()
}
