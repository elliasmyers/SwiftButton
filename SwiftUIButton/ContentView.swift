//
//  ContentView.swift
//  SwiftUIButton
//
//  Created by Raiden Yamato on 03.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack() {
            Button {
                print("Hello world tapped!")
            } label: {
                Text("Hello World!")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    .background(Color.purple)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .padding(10)
                    .overlay {
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(.purple, lineWidth: 5)
                    }
                
                
            }
            
            Button {
                print("Delete button tapped")
            } label: {
                
                    Label {
                        Text("Delete")
                            .fontWeight(.semibold)
                            .font(.title)
                    } icon: {
                        Image(systemName: "trash")
                            .font(.largeTitle)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(LinearGradient(colors: [Color("DarkGreen"), Color("LightGreen")], startPoint: .leading, endPoint: .trailing))
                .cornerRadius(40)
                .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                .padding(.horizontal, 20)
            }
        
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
