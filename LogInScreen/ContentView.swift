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
            .font(.title2)
            .frame(width: 100, height:40)
            .cornerRadius(15.0)
            .background(Color("SegueColor").opacity(0.5))
            .foregroundColor(Color.white)
            .padding(.leading)
            .multilineTextAlignment(.leading)
            .font(.title3)
            .bold()
            

            
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


