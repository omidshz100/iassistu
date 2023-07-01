//
//  ContentView.swift
//  iAssistU
//
//  Created by Omid Shojaeian Zanjani on 01/07/23.
//
//
import SwiftUI

struct ContentView: View {
    
    @State var inputText:String = ""
    
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            
            Rectangle()
                .fill(Color("box-bg-color"))
                .frame(width: 340, height: 260)
                .cornerRadius(20)
                .overlay {
                    VStack{
                        Image(systemName: "iphone.rear.camera")
                        HStack{
                            Text("Authentication code")
                            Image(systemName: "questionmark.circle")
                        }
                        Form{
                            TextField("Authentication code here", text: $inputText, onCommit: {
                                               print("done")
                                           })
                            Section{
                                Button {
                                    
                                }label: {
                                    HStack{
                                        Spacer()
                                        Text("Done")
                                        Spacer()
                                    }
                                }
                                .foregroundColor(Color("btn-bg-color"))
                            }
                        }.scrollDisabled(true)
                            .cornerRadius(20)
                        
                        
                        
                    }.padding()
                }.padding()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
