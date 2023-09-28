//
//  LoginScreen.swift
//  ToDoList
//
//  Created by Aray Muratova on 15.09.2023.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                //Header
                HeaderView(title: "To Do List",
                           subtitle: "Get things done",
                           angle: 15,
                           backgroundColor: .pink)
                
            
                //Form
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Email address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())

                    TLButton(
                        title: "Log in",
                        backgroundColor: .blue
                    ) {
                        viewModel.login()
                    }
                    .padding()
                
                }
                .offset(y: -50)
                
                VStack() {
                    Text("New around here ?");
                    NavigationLink("Create an account", destination: RegisterView())
                    .padding(.bottom, 50)
                }
                
               
                //Create Acc
                
                Spacer()
            }
            .background(Color(UIColor.systemGray6))
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
