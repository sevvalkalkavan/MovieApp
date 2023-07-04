//
//  ContentView.swift
//  LogInScreen
//
//  Created by Şevval Kalkavan on 4.07.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack (alignment: .leading){
                Text("Hello")
                    .multilineTextAlignment(.leading)
                    .font(Font.custom("KaushanScript-Regular", size: 60))
                    .foregroundColor(.white)
                    .padding()
                
                NavigationLink(destination: LogIn()){
                   Segue(title: "LogIn")
                }
                NavigationLink(destination: SignUp()){
                    Segue(title: "SignUp")
                }
                
            }
        }
        }
    }
}
struct Segue: View {
    var title : String
    var body: some View {
        Text(title)
            .background(Color.white.opacity(0.5))
            .foregroundColor(.white)
            .padding()
            .multilineTextAlignment(.leading)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


