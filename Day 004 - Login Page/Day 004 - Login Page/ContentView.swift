//
//  ContentView.swift
//  Day 004 - Login Page
//
//  Created by Wayne Dahlberg on 7/11/19.
//  Copyright © 2019 Floppy Hat, LLC. All rights reserved.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
let storedUsername = "username"
let storedPassword = "password"

struct ContentView: View {
  @State var username: String = ""
  @State var password: String = ""
  @State var authenticationDidFail: Bool = false
  @State var authenticationDidSucceed: Bool = false
  
  var body: some View {
    
    ZStack {
      VStack {
        WelcomeText()
        UserImage()
        UsernameTextField(username: $username)
        PasswordTextField(password: $password)
        if authenticationDidFail {
          Text("Information not correct. Try again.")
            .font(.footnote)
            .fontWeight(.bold)
            .offset(y: -10)
            .foregroundColor(.red)
        }
        Button(action: {
          if self.username == storedUsername && self.password == storedPassword {
            self.authenticationDidSucceed = true
          } else {
            self.authenticationDidFail = true 
          }
        }) {
          LoginButtonContent()
        }
        if authenticationDidSucceed {
          Text("Login successful!")
            .font(.headline)
            .frame(width: 250, height: 80)
            .background(Color.green)
            .cornerRadius(20.0)
            .foregroundColor(.white)
            .animation(.basic(duration: 0.5, curve: .easeIn))
        }
      }
      .padding()
    }
  }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
#endif

struct WelcomeText : View {
  var body: some View {
    return Text("Welcome!")
      .font(.largeTitle)
      .fontWeight(.semibold)
      .padding(.bottom, 20)
  }
}

struct UserImage : View {
  var body: some View {
    return Image("userImage")
      .resizable()
      .aspectRatio(UIImage(named: "userImage")!.size, contentMode: .fill)
      .frame(width: 150, height: 150)
      .clipped()
      .cornerRadius(150)
      .padding(.bottom, 75)
  }
}

struct LoginButtonContent : View {
  var body: some View {
    return Text("LOGIN")
      .font(.headline)
      .color(.white)
      .padding()
      .frame(width: 220, height: 60)
      .background(Color.green)
      .cornerRadius(15.0)
  }
}

struct UsernameTextField : View {
  @Binding var username: String
  var body: some View {
    return TextField($username, placeholder: Text("Username"))
      .padding()
      .background(lightGreyColor)
      .cornerRadius(5.0)
      .padding(.bottom, 20)
  }
}

struct PasswordTextField : View {
  @Binding var password: String
  var body: some View {
    return TextField($password, placeholder: Text("Password"))
      .padding()
      .background(lightGreyColor)
      .cornerRadius(5.0)
      .padding(.bottom, 20)
  }
}
