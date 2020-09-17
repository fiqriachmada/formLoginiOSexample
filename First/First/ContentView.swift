//
//  ContentView.swift
//  First
//
//  Created by Achmada Fiqri A Rasyad on 17/09/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20){
                Logo()
                FormBox()
            }
            .padding(.all, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Logo : View {
    var body: some View {
        VStack{
            Image("Logo")
                .resizable()
                .frame(width: 100, height: 100, alignment: .bottom)
                .background(Color("firstColor"))
                .foregroundColor(.white)
                .padding()
                .background(Color("firstColor"))
                .cornerRadius(20)
            Text("Lika-Liku Urip")
                .foregroundColor(.white)
        }
    }
}

struct FormBox : View {
    @State var username: String = ""
    @State var password: String = ""
    var body: some View{
        VStack(alignment: .leading){
            //username
            Text("Username")
                .font(.callout).bold()
                .foregroundColor(.white)
            TextField("Masukkan Username Anda", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            //password
            Text("Password")
                .font(.callout).bold()
                .foregroundColor(.white)
            SecureField("Masukkan Password Anda", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            //button
            Button(action: {print("Hello Button")}, label: {
                Text("Sign In")
                Spacer()
            })
            .padding()
            .background(Color.blue)
            .cornerRadius(20)
            .foregroundColor(.white)
        }
        .padding(.all, 30)
        .background(Color.black)
        .cornerRadius(20)
    }
    
}
