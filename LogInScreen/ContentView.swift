//
//  ContentView.swift
//  LogInScreen
//
//  Created by Şevval Kalkavan on 4.07.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Text("Hello")
                    .multilineTextAlignment(.leading)
                    .font(Font.custom("KaushanScript-Regular", size: 60))
                .foregroundColor(.white)
                
                Button("Log In") {
                    
                }
                Button("Sign Up"){
                    
                }
            }
            
           
                
                
            
            
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
