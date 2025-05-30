//
//  SignInView.swift
//  OnlineGroceriesSwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/05/30.
//

import SwiftUI

struct SignInView: View {
    
    @State var phoneNumber: String = ""
    var body: some View {
        ZStack {
            Image("bottom_bg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: .screenWidth, height: .screenHeight / 2)
            
            VStack {
                Image("sign_in_top")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: .screenWidth, height: .screenHeight / 2)
                Spacer()
            }
            
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Get your groceries\nwith your nectar")
                        .font(.customfont(.semibold, fontSize: 26))
                        .foregroundStyle(Color.primaryText)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 25)
                    
                    HStack {
                        Button {
                            
                            //MARK: - TODO
                            
                        } label: {
                            Image("")
                            Text("+27")
                                .font(.customfont(.medium, fontSize: 18))
                                .foregroundStyle(Color.primaryText)
                        }
                        
                        TextField("Enter your phone number", text: $phoneNumber)
                            .frame(minWidth: 0, maxWidth: .infinity)
                    }
                    Divider()
                        .padding(.bottom, 25)

                    Text("Or connect with social media")
                        .font(.customfont(.semibold, fontSize: 14))
                        .foregroundStyle(Color.textTitle)
                        .multilineTextAlignment(.center)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(.bottom, 25)
                        .padding(.bottom, 8)

                    
                    Button {
                       
                    } label: {
                        Image("google_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        Text("Continue with Google")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundStyle(.white)
                            .multilineTextAlignment(.center)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                    .background(Color(hex: "5353EC"))
                    .cornerRadius(20)
                    .padding(.bottom, 8)
                    
                    Button {
                       
                    } label: {
                        Image("fb_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        Text("Continue with Facebook")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundStyle(.white)
                            .multilineTextAlignment(.center)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                    .background(Color(hex: "4A66AC"))
                    .cornerRadius(20)
                    .padding(.bottom, 8)
                    
                }
                .padding(.horizontal, 20)
                .frame(width: .screenWidth, alignment: .leading)
                .padding(.top, .topInsets + .screenWidth)

            }
            
        }
        .ignoresSafeArea()
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .toolbar(.hidden)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SignInView()
}
