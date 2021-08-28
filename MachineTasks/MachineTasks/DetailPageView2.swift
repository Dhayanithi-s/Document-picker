//
//  DetailPageView2.swift
//  MachineTasks
//
//  Created by Dhayanithi on 26/08/21.
//

//
//  DetailPageView.swift
//  MachineTasks
//
//  Created by Dhayanithi on 26/08/21.
//

import SwiftUI

struct DetailPageView2 : View {
    
    
    
    var body: some View {
        NavigationView{
            VStack {
                
                VStack(alignment: .leading, spacing: 0.5, content: {
                    
                    Text("Birth Certificates Location")
                        .bold()
                        .foregroundColor(Color("darkblue"))
                        .padding()
                    HStack{
                        Image(systemName: "folder.badge.plus")
                        TextField("", text: .constant(""))
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.black)
                            .padding(.top, 3)
                            
                    }
                   
                        
                    Divider().background(Color("darkblue"))
                        .font(.system(size: 20, weight: .heavy))
                    
                }).padding(.all, 5)
                
                VStack(alignment: .leading, spacing: 0.5, content: {
                    
                    Text("Social Security Cards Location")
                        .bold()
                        .foregroundColor(Color("darkblue"))
                        .padding()
                    HStack{
                        Image(systemName: "folder.badge.plus")
                        TextField("", text: .constant(""))
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.black)
                            .padding(.top, 3)
                            
                    }
                   
                        
                    Divider().background(Color("darkblue"))
                        .font(.system(size: 20, weight: .heavy))
                    
                }).padding(.all, 5)
                
                VStack(alignment: .leading, spacing: 0.5, content: {
                    
                    Text("Passport Location")
                        .bold()
                        .foregroundColor(Color("darkblue"))
                        .padding()
                    HStack{
                        Image(systemName: "folder.badge.plus")
                        TextField("", text: .constant(""))
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.black)
                            .padding(.top, 3)
                            
                    }
                   
                        
                    Divider().background(Color("darkblue"))
                        .font(.system(size: 20, weight: .heavy))
                    
                }).padding(.all, 5)
                
                VStack(alignment: .leading, spacing: 0.5, content: {
                    
                    Text("Naturaliation Papers Location")
                        .bold()
                        .foregroundColor(Color("darkblue"))
                        .padding()
                    HStack{
                        Image(systemName: "folder.badge.plus")
                        TextField("", text: .constant(""))
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.black)
                            .padding(.top, 3)
                            
                    }
                   
                        
                    Divider().background(Color("darkblue"))
                        .font(.system(size: 20, weight: .heavy))
                    
                }).padding(.all, 5)
                
                VStack(alignment: .leading, spacing: 0.5, content: {
                    
                    Text("Will and Ancillary Location")
                        .bold()
                        .foregroundColor(Color("darkblue"))
                        .padding()
                    HStack{
                        Image(systemName: "folder.badge.plus")
                        TextField("", text: .constant(""))
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.black)
                            .padding(.top, 3)
                            
                    }
                   
                        
                    Divider().background(Color("darkblue"))
                        .font(.system(size: 20, weight: .heavy))
                    
                }).padding(.all, 5)
                
                VStack(alignment: .leading, spacing: 0.5, content: {
                    
                    Text("Power of Attorney Location")
                        .bold()
                        .foregroundColor(Color("darkblue"))
                        .padding()
                    HStack{
                        Image(systemName: "folder.badge.plus")
                        TextField("", text: .constant(""))
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.black)
                            .padding(.top, 3)
                            
                    }
                   
                        
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
                
                
            }.padding()
    }
    }
    
}
