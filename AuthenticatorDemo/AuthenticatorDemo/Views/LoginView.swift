//
//  LoginView.swift
//  AuthenticatorDemo
//
//  Created by Anton Dem on 10.04.2024.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var authenticationManager : AuthenticatonManager
    
    var body: some View {
        VStack(spacing: 40){
            Title()
            
            switch
            authenticationManager.biometryType{
            case .faceID:
                PrimaryButton(image: "faceid", text: "Login with FaceID")
                    .onTapGesture {
                        Task.init {
                            await                         authenticationManager.authenticateWithBiometrics()

                        }
                    }
            default:
                NavigationLink{
                    CredentialsLoginView()
                        .environmentObject(authenticationManager)
                }label: {
                    PrimaryButton(image:"person.fill",text: "Login with your credentials")
                }
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient(colors: [.blue,.purple], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(AuthenticatonManager())
    }
}
