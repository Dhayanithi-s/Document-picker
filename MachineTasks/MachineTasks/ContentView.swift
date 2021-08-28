//
//  ContentView.swift
//  MachineTasks
//
//  Created by Dhayanithi on 26/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        MainView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MainView: View {
    @State var empName = ""
    @State var addAddress = ""
    @StateObject var loginData = MainViewModel()
    @State var supName = ""
    
    var body: some View{
        
        NavigationView{
            VStack(spacing: 20) {
                
                Text("Employer")
                    .font(.title2)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 10)
                    .foregroundColor(.white)
                    .background(Color(.red))
                    
                    .cornerRadius(30)
            
                
                Text("Add/Edit information about your employer")
                    .font(.body)
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                VStack(alignment: .leading, spacing: 0.5, content: {
                    Text("Employer Name")
                        .bold()
                        .foregroundColor(Color("darkblue"))
                        .padding()
                    
                    TextField("", text: self.$empName)
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.black)
                        .padding(.top, 3)
                    
                    Divider().background(Color("darkblue"))
                        .font(.system(size: 20, weight: .heavy))
                    
                }).padding(.all, 5)
                
                VStack(alignment: .leading, spacing: 0.5, content: {
                    Text("Add Address")
                        .bold()
                        .foregroundColor(Color("darkblue"))
                        .padding()
                    
                    TextField("", text: self.$addAddress)
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.black)
                        .padding(.top, 3)
                    
                    Divider().background(Color("darkblue"))
                        .font(.system(size: 20, weight: .heavy))
                    
                }).padding(.all, 5)
                
                VStack(alignment: .leading, spacing: 0.5, content: {
                    Text("Phone Number")
                        .bold()
                        .foregroundColor(Color("darkblue"))
                        .padding()
                    
                    Text(loginData.PhnNo)
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.black)
                        .padding(.top, 3)
                    
                    Divider().background(Color("darkblue"))
                        .font(.system(size: 20, weight: .heavy))
                    
                }).padding(.all, 5)
                
                VStack(alignment: .leading, spacing: 0.5, content: {
                    Text("Supervisor Name")
                        .bold()
                        .foregroundColor(Color("darkblue"))
                        .padding()
                    
                    TextField("", text: self.$supName)
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.black)
                        .padding(.top, 3)
                    
                    Divider().background(Color("darkblue"))
                        .font(.system(size: 20, weight: .heavy))
                    
                }).padding(.all, 5)
                
                Spacer(minLength: 10)
                    
                NavigationLink(
                    destination: DetailPageView(),
                    label: {
                        Text("Continue")
                            .font(.title3)
                            .padding(.vertical, 15)
                            .padding(.horizontal, 30)
                            .foregroundColor(.white)
                            .background(Color(.red))
                            .cornerRadius(30)
                    })
                Spacer()
                
            }.padding()
        }
        
        
    }
    
}
