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
                Text("SIGN UP")
                    .font(Font.custom("KaushanScript-Regular", size: 40))
                    .foregroundColor(.white)
                    .bold()
                    .font(.largeTitle)
                TextField("enter your name", text: $name)
                     .textContentType(.emailAddress)
                     .foregroundColor(.white)
                     .padding()
                     .frame(width: 250.0)
                     .background(Color.blue.opacity(0.4))
                     .cornerRadius(15)
                    
                TextField("enter your email", text: $email)
                     .textContentType(.emailAddress)
                     .foregroundColor(.white)
                     .padding()
                     .frame(width: 250.0)
                     .background(Color.blue.opacity(0.4))
                     .cornerRadius(15)
                     
                TextField("enter your password", text: $password)
                     .textContentType(.emailAddress)
                     .foregroundColor(.white)
                     .padding()
                     .frame(width: 250.0)
                     .background(Color.blue.opacity(0.4))
                     .cornerRadius(15.0)
                     
                     .padding(.bottom)
                Button("Sign Up") {
                    
                }
                .padding()
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [Color.pink.opacity(0.5) , Color.blue.opacity(0.5)]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(50)
                .padding()
                .clipShape(Capsule())
                .padding(.bottom)
                .foregroundColor(.black)
                
                SocialLogin(imageName: "apple.logo", title: "Sign in with Apple")
                SocialLogin(imageName:  "envelope.fill", title:  "Sign in with Google")
              
                
                
                
                
                
            }
            
        }
        
       
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}

struct SocialLogin: View {
    var imageName : String
    var title : String
    var body: some View {
        HStack{
            Image(systemName:imageName )
            Text(title)
        }
        .padding()
        .background(Color.black.opacity(0.1))
        .cornerRadius(20)
        .shadow(color: Color.black, radius: 60 , x: 10 , y: 16)
    }
}
