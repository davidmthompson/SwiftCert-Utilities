//
//  eval.swift
//  SwiftCert-Utilities
//
//  Created by Bryce Stryker Haug  on 3/9/26.
//

import SwiftUI

struct eval: View {
    
    @State private var password: String = ""
    
    enum PasswordStrength: String {
        case weak = "Weak"
        case medium = "Medium"
        case strong = "Strong"
        case exelent = "Exelent"
    }
    var strength: PasswordStrength {
            if password.count < 6 {
                return .weak
            } else if password.count < 10 {
                return .medium
            } else {
                return .strong
            } else {
                return .
            }
        }
    var strengthValue: Double {
            switch strength {
            case .weak:
                return 1.0
            case .medium:
                return 2.0
            case .strong:
                return 3.0
            }
        }
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Password Evaluator")
                .font(.title)
            TextField("Password", text: $password)
                .padding(.leading, 165)
            Text("Strngth: \(strength.rawValue)")
        }
    }
}

#Preview {
    eval()
}
