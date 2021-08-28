//
//  DetailPageView.swift
//  MachineTasks
//
//  Created by Dhayanithi on 26/08/21.
//

import SwiftUI

struct DetailPageView: View {
    
    @State var fileName = ""
    @State var openFile = false
    var body: some View {
        
        NavigationView{
            ScrollView{
            VStack {
                
                Text("Relevant Documents")
                    .font(.title2)
                    .foregroundColor(.white)
                    .background(Color(.red))
                    .padding()
                    .frame(alignment: .topLeading)
                
                Text("Add/Edit the location of relevant documents that the caregiver may need to find or state thst they do not exist.")
                    .font(.body)
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                VStack(alignment: .leading, spacing: 0.5, content: {
                    
                    Text("Birth Certificates Location")
                        .bold()
                        .foregroundColor(Color("darkblue"))
                        .padding()
                    HStack{
                        
                        
                        TextField("Upload File", text: $fileName)
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.black)
                            .padding(.top, 3)
                        
                        Button(action: {
                            openFile.toggle()
                        }, label: {
                            Image(systemName: "folder.badge.plus")
                        })
                            
                        
                    }
                    .fileImporter(isPresented: $openFile, allowedContentTypes: [.pdf]){(res) in
                        
                        do{
                            let fileUrl = try res.get()
                            print(fileUrl)
                            
                            self.fileName = fileUrl.lastPathComponent
                        }
                        catch{
                            print("error reading docs")
                            print(error.localizedDescription)
                        }
                     
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
            }
           
                NavigationLink(
                    destination: DetailPageView2(),
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
