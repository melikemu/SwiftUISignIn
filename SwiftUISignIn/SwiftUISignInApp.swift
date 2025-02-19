//
//  SwiftUISignInApp.swift
//  SwiftUISignIn
//
//  Created by Melike Mühür on 19.02.2025.
//

import SwiftUI

@main
struct SwiftUISignInApp: App {
    var body: some Scene {
        WindowGroup {
            SignInView() // Ana ekran burada başlıyor
        }
    }
}

struct SignInView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isPasswordVisible: Bool = false
    
    var body: some View {
        VStack(spacing: DesignTokens.Spacing.large) {
            Text("Welcome Back!")
                .font(DesignTokens.Typography.title)
                .foregroundColor(DesignTokens.Colors.text)
            
            VStack(alignment: .leading, spacing: DesignTokens.Spacing.medium) {
                Text("Email")
                    .font(DesignTokens.Typography.body)
                
                HStack {
                    Image(systemName: "envelope.fill")
                    TextField("Enter your email", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                }
            }
            
            VStack(alignment: .leading, spacing: DesignTokens.Spacing.medium) {
                Text("Password")
                    .font(DesignTokens.Typography.body)
                
                HStack {
                    Image(systemName: "lock.fill")
                    if isPasswordVisible {
                        TextField("Enter your password", text: $password)
                    } else {
                        SecureField("Enter your password", text: $password)
                    }
                    Button(action: { isPasswordVisible.toggle() }) {
                        Image(systemName: isPasswordVisible ? "eye.slash.fill" : "eye.fill")
                            .foregroundColor(.gray)
                    }
                }
                .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            Button(action: {
                // Sign in action
            }) {
                HStack {
                    Text("Sign In")
                        .font(DesignTokens.Typography.button)
                    Image(systemName: "arrow.right.circle.fill")
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(DesignTokens.Colors.primary)
                .foregroundColor(DesignTokens.Colors.buttonText)
                .cornerRadius(10)
            }
            
            Spacer()
        }
        .padding()
        .background(DesignTokens.Colors.background.ignoresSafeArea())
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
