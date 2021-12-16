//
//  ContentView.swift
//  SosFanta
//
//  Created by felice di palma on 10/12/21.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        
        
        NavigationView{
            
        
            VStack(spacing: 25){
                
                MainNewsComponent(item: items[0])
                
                
                visualDeck()
                    
                
            }.padding()
            
            
            
            .navigationTitle("News")
        }
    }
    
    private func visualDeck() -> some View{
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                ForEach(items){ item in
                    ItemRow(item: item)
                }
            }.padding()
           
        }
      
        
    }
    
    
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
