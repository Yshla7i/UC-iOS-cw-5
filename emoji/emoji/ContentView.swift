//
//  ContentView.swift
//  emoji
//
//  Created by Yousef Almutairy on 02/07/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var emojiArray = ["😃", "🤣","😄","🥲","🥰","🤩","🥳","😔","😤","😰","😭","😳"]
    @State var bigemoji = ""
    var body: some View {
        ZStack{
            VStack{
                Text("اختر الايموجي الذي يعبر عن يومك")
                    .padding()
                
                Text(bigemoji)
                    .font(.custom(bigemoji, size: 80))
                   
                   
                
                ScrollView(.horizontal){
                    
                    HStack {
                        ForEach(emojiArray, id: \.self) { emoji in
                            
                            Text(emoji)
                                .padding()
                                .background(Color.teal)
                                .clipShape(Circle())
                            
                                .onTapGesture{
                                    bigemoji = emoji
                                }
                           
                            
                        }
                    }
                }
                
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
