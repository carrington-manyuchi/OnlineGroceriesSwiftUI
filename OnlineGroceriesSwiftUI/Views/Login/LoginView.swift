//
//  LoginView.swift
//  OnlineGroceriesSwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/05/30.
//

import SwiftUI

struct LoginView: View {
    
    @Environment(\.dismiss) private var dismiss
    @StateObject var loginViewModel: MainViewModel = MainViewModel.shared
    
    var body: some View {
        ZStack {
            Image("bottom_bg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack {
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)
                    .padding(.bottom, .screenWidth * 0.1)
                
                Text("Log in")
                    .font(.customfont(.semibold, fontSize: 26))
                    .foregroundStyle(Color.primaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 4)
                
                Text("Enter your email and password")
                    .font(.customfont(.semibold, fontSize: 16))
                    .foregroundStyle(Color.secondaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, .screenWidth * 0.1)
                
                LineTextField(
                    title: "Email",
                    placeholder: "Enter your email address",
                    txt: $loginViewModel.emailText,
                    keyboardType: .emailAddress
                )
                .padding(.bottom, .screenWidth * 0.07)
                
                LineSecureField(
                    title: "Password",
                    placeholder:  "Enter your password",
                    txt: $loginViewModel.passwordText,
                    isShowPassword: $loginViewModel.isShowPassword
                )
                .padding(.bottom, .screenWidth * 0.02)

                Button {
                    
                } label: {
                    Text("Forgot Password?")
                        .font(.customfont(.medium, fontSize: 14))
                        .foregroundStyle(Color.primaryText)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                .padding(.bottom, .screenWidth * 0.03)
                
                RoundButton(title: "Log In") {
                    loginViewModel.serviceCallLogin()
                }
                .padding(.bottom, .screenWidth * 0.05)

                HStack {
                    Text("Don have an account?")
                        .font(.customfont(.semibold, fontSize: 14))
                        .foregroundStyle(Color.primaryText)
                    
                    Text("Signup")
                        .font(.customfont(.semibold, fontSize: 14))
                        .foregroundStyle(Color.primaryApp)
                }
                Spacer()
            }
            .padding(.top, .topInsets + 64)
            .padding(.horizontal, 20)
            .padding(.bottom, .bottomInsets)
            
            VStack {
                HStack {
                    Button {
                        dismiss()
                    } label: {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    Spacer()
                }
                Spacer()
            }
            .padding(.top, .topInsets)
            .padding(.horizontal, 20)
        }
        .alert(isPresented: $loginViewModel.showError) {
            Alert(
                title: Text(Globs.AppName),
                message: Text(loginViewModel.errorMessage),
                dismissButton: .default(Text("Ok"))
            )
        }
        .ignoresSafeArea()
        .navigationTitle("")
        .background(Color.white)
        .navigationBarBackButtonHidden(true)
        .toolbarVisibility(.hidden, for: .navigationBar)
    }
}

#Preview {
    LoginView()
}
