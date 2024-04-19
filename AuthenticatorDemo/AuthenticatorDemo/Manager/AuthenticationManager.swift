//
//  AuthenticationManager.swift
//  AuthenticatorDemo
//
//  Created by Anton Dem on 10.04.2024.
//

import Foundation
import LocalAuthentication

class AuthenticatonManager:ObservableObject{
    private(set) var context = LAContext()
    
    @Published private(set) var biometryType: LABiometryType = .none
    private(set) var canEvaluatePolicy = false
    
    @Published private(set) var isAuthenticated = false
    @Published private(set) var errorDescription:String?
    @Published var showAlert = false
    
    init(){
        getBiometryType()
    }
    
    func getBiometryType(){
        canEvaluatePolicy = context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil)
        biometryType = context.biometryType
    }
    
    func authenticateWithBiometrics() async{
        context = LAContext()
        
        if canEvaluatePolicy{
            let reason = "Log into your account"
            
            do{
                let success = try await context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason)
                
                if success {
                    DispatchQueue.main.async {
                        self.isAuthenticated = true
                        print("isAuthenticated", self.isAuthenticated)
                    }
                }
                
            }catch{
                print(error.localizedDescription)
                DispatchQueue.main.async {
                    self.errorDescription = error.localizedDescription
                    self.showAlert = true
                    self.biometryType = .none
                }
            }
            
        }
    }
    
    func authenticateWithCredentials(username:String, password:String){
        if username.lowercased() == "anton" && password == "1234"{
            isAuthenticated = true
        }else{
            errorDescription = "Wrong credintials"
            showAlert = true
        }
    }
    
    func logout(){
        isAuthenticated = false
    }
    
}
