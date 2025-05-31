//
//  MainViewModel.swift
//  OnlineGroceriesSwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/05/30.
//

import Foundation


class MainViewModel: ObservableObject {
    
    static let shared: MainViewModel = .init()
    
    @Published var emailText: String = ""
    @Published var passwordText: String = ""
    @Published var isShowPassword: Bool = false
    @Published var showError: Bool = false
    @Published var  errorMessage: String = ""
    
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
        
//        if(txtUsername.isEmpty) {
//            self.errorMessage = "please enter valid username"
//            self.showError = true
//            return
//        }
//        
//        
//        if(!txtEmail.isValidEmail) {
//            self.errorMessage = "please enter valid email address"
//            self.showError = true
//            return
//        }
//        
//        if(txtPassword.isEmpty) {
//            self.errorMessage = "please enter valid password"
//            self.showError = true
//            return
//        }
//        
//        ServiceCall.post(parameter: [ "username": txtUsername , "email": txtEmail, "password": txtPassword, "dervice_token":"" ], path: Globs.SV_SIGN_UP) { responseObj in
//            if let response = responseObj as? NSDictionary {
//                if response.value(forKey: KKey.status) as? String ?? "" == "1" {
//                    self.setUserData(uDict: response.value(forKey: KKey.payload) as? NSDictionary ?? [:])
//                }else{
//                    self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
//                    self.showError = true
//                }
//            }
//        } failure: { error in
//            self.errorMessage = error?.localizedDescription ?? "Fail"
//            self.showError = true
//        }

    }
    
}
