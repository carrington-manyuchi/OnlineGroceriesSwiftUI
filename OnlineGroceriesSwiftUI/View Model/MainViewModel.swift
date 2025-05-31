//
//  MainViewModel.swift
//  OnlineGroceriesSwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/05/30.
//

import Foundation


class MainViewModel: ObservableObject {
    
    static let shared: MainViewModel = .init()
    
    @Published var usernameText: String = ""
    @Published var emailText: String = ""
    @Published var passwordText: String = ""
    @Published var isShowPassword: Bool = false
    @Published var showError: Bool = false
    @Published var  errorMessage: String = ""
    
//    init() {
//        usernameText = "Jay05"
//        emailText = "jay05@gmail.com"
//        passwordText = "123456"
//    }
    
    //MARK: - ServiceCall
    
    func serviceCallLogin() {
        if emailText.isEmpty {
            self.errorMessage = "Email address could not be empty"
            self.showError = true
            return
        }
        
        if(!emailText.isValidEmail) {
            self.errorMessage = "please enter valid email address"
            self.showError = true
            return
        }
        
        if passwordText.isEmpty {
            self.errorMessage = "Password could not be empty"
            self.showError = true
            return
        }
    }
    
    func serviceCallSignUp(){
        if(usernameText.isEmpty) {
            self.errorMessage = "please enter valid username"
            self.showError = true
            return
        }

        if(!emailText.isValidEmail) {
            self.errorMessage = "please enter valid email address"
            self.showError = true
            return
        }
        
        if(passwordText.isEmpty) {
            self.errorMessage = "please enter valid password"
            self.showError = true
            return
        }
    }
    
}
