//
//  ContentView.swift
//  OnTheMap
//
//  Created by Jonathan Sweeney on 9/18/20.
//

import SwiftUI
import MapKit

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                LogoImage()
                WelcomeText()
                TextField("Username", text: $username)
                    .padding()
                    .background(Color(K.Color.lightGray))
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color(K.Color.lightGray))
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                NavigationLink(destination: MainView()) {
                    LoginButtonContent()
                }
                HStack {
                    Text(K.noAccount)
                    Button(action: { print("Signing up...") }) {
                        Text(K.signUp)
                    }
                }.padding(.top, 8)
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

private struct WelcomeText: View {
    var body: some View {
        Text(K.loginDirections)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

private struct LogoImage: View {
    var body: some View {
        Image("logo-u")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 100, alignment: .center)
            .padding(.bottom, 20)
    }
}

struct LoginButtonContent: View {
    var body: some View {
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .cornerRadius(15.0).background(Color(K.Color.udacityBlue))
            .cornerRadius(5.0)
    }
}
