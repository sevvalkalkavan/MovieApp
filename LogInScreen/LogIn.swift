//
//  LogIn.swift
//  LogInScreen
//
//  Created by Şevval Kalkavan on 4.07.2023.
//

import SwiftUI

struct LogIn: View {
    
    @State var email : String = ""
    @State var password : String = ""
    var body: some View {
        ZStack {
            Image("Red Sunset")
               .edgesIgnoringSafeArea(.all)
            VStack {
                
                Text("LOG IN")
                    .font(Font.custom("KaushanScript-Regular", size: 40))
                    .foregroundColor(.white)
                    .bold()
                    .font(.largeTitle)
              
                TextField("Email", text: $email)
                    .textContentType(.emailAddress)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 250.0)
                    .background(Color.pink.opacity(0.5))
                    .cornerRadius(15)
                    .accentColor(.green)
                    .padding()
                
                SecureField("Password", text: $password)
                    .foregroundColor(.white)
                    .textContentType(.password)
                    .foregroundColor(.black)
                    .padding()
                    .frame(width: 250.0)
                    .background(Color.pink.opacity(0.5))
                    .cornerRadius(15)
                
                Button("Log in") {
                    
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.white.opacity(0.1))
                .cornerRadius(50)
                .padding()

                    
            }
                
        }
        
        
         
    }
}

struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}
