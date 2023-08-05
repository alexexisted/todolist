//
//  LoginView.swift
//  ToDoList
//
//  Created by Alexa G on 02.07.2023.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List",
                           subtitle: "Get things done",
                           angle: 25,
                           background: .mint)
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    } // если не заполнены поля то выводится ошибка
                    
                    
                    TextField("Email Adress", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log In",
                             background: .blue
                    )
                    {
                        viewModel.login()
                    }
                    
                    .padding()
                    //отступы

                }
                .offset(y: -30)
                // offset поднял на -30 но оси y поля ввода логина и пароля
                
                
                VStack {
                    Text("New around here?")
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                //отступ 50 снизу
                
                Spacer()
                //добавлен снизу, плжтому отступ будет между
                //кнопкой cfeate an account и самым низом
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
