//
//  PasswordStrengthView.swift
//  SwiftCert-Utilities
//
//  Created by david thompson on 3/9/26.
//
import SwiftUI

enum PasswordStrength {
    case bad, okay, strong, excellent
}

struct PasswordStrengthView: View {
    @State private var passwordText: String = ""

    var body: some View {
        VStack {
            Image("Logo")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.top)

            Text("Smart Passwords")
                .fontWeight(.bold)
                .font(.title)
            Text("Zero Stress")
                .fontWeight(.bold)
                .font(.title)
         
            Divider()
                .frame(height: 3)
                .background(Color.black)
     
            EvalBar(password: $passwordText)
                .padding()
            
            Divider()
                .frame(height: 3)
                .background(Color.black)

            Label("What Is Your Password", systemImage: "lock.fill")
                .font(.title2)
                .padding(.top)
            
            SecureField("Enter password here", text: $passwordText)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            
            Spacer()
        }
    }
}

#Preview {
    PasswordStrengthView()
}
