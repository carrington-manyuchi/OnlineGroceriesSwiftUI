//
//  SignupView.swift
//  OnlineGroceriesSwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/05/31.
//

import SwiftUI
import CountryPicker

struct SignupView: View {
    
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
                
                Text("Sign Up")
                    .font(.customfont(.semibold, fontSize: 26))
                    .foregroundStyle(Color.primaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 4)
                
                Text("Enter your credentials to continue")
                    .font(.customfont(.semibold, fontSize: 16))
                    .foregroundStyle(Color.secondaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, .screenWidth * 0.1)
                
                LineTextField(
                    title: "Username",
                    placeholder: "Enter your username",
                    txt: $loginViewModel.emailText,
                    keyboardType: .emailAddress
                )
                .padding(.bottom, .screenWidth * 0.07)
                
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

                Text("By contnuing, you agree to our Terms of Service and Privacy Policy")
                    .font(.customfont(.semibold, fontSize: 14))
                    .foregroundStyle(Color.secondaryText)
                    .padding(.bottom, .screenWidth * 0.02)
                
                RoundButton(title: "Sign Up") {
                    loginViewModel.serviceCallLogin()
                }
                .padding(.bottom, .screenWidth * 0.05)

                HStack {
                    Text("Already have an account?")
                        .font(.customfont(.semibold, fontSize: 14))
                        .foregroundStyle(Color.primaryText)
                    
                    Text("Sign In")
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
    SignupView()
}

