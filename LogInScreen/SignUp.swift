//
//  SignUp.swift
//  LogInScreen
//
//  Created by Şevval Kalkavan on 4.07.2023.
//

import SwiftUI

struct SignUp: View {
    @State var name : String = ""
    @State var email : String = ""
    @State var password : String = ""
    
    var body: some View {
    
        ZStack {
            Image("Red Sunset")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                TextField("enter your name", text: $name)
                     .textContentType(.emailAddress)
                     .foregroundColor(.white)
                     .padding()
                     .frame(width: 250.0)
                     .background(Color.blue.opacity(0.2))
                     .cornerRadius(15)
                     .accentColor(.green)
                 .padding()
                
                
                //with apple
                //with google
                
            }
            
        }
        
       
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
