//
//  ContentViewModel.swift
//  iChat
//
//  Created by EDSON SANTOS on 02/02/2024.
//

import Foundation
import FirebaseAuth

class ContentViewModel: ObservableObject {
    
    @Published var isLogged = Auth.auth().currentUser != nil
    
    func onAppear(){
        Auth.auth().addStateDidChangeListener { auth, user in
            self.isLogged = user != nil
        }
    }
    
}
 
