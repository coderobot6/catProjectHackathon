//
//  LoginView.swift
//  catApp
//
//  Created by Triet Tran on 2/25/24.
//

import Foundation
import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var isLoginSuccess = false

    var body: some View {
        VStack {
            Image("theDancingCatLogo") // Replace with your app logo image name
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250, height: 250)
                .padding(.bottom, 20)

            TextField("Username", text: $username)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
                .padding(.bottom, 20)

            SecureField("Password", text: $password)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
                .padding(.bottom, 20)

            Button(action: {
                // Simulate login action
                // In a real app, you would perform authentication and navigate accordingly
                isLoginSuccess = true
            }) {
                Text("Login")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .padding(.bottom, 20)

            if isLoginSuccess {
                Text("Login Successful!")
                    .foregroundColor(.green)
            }
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
