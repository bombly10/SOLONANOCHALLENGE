//
//  ItemRow.swift
//  SosFanta
//
//  Created by felice di palma on 11/12/21.
//

import SwiftUI

struct ItemRow: View {
    let item: Item
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
            .fill(Color.white)
            .frame(width: 375, height: 105)
            .cornerRadius(10)
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.10), radius: 4)
            
            HStack{
                Image(uiImage: item.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                   
                    .frame(width: 100, height: 105)
                    .cornerRadius(8)
                   
                
                VStack(alignment: .leading){
                    Text(item.title)
                        .fontWeight(.bold)
                        .lineLimit(1)
                       
                    
                    Text(item.description)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                        .font(.system(size: 14))
                
                    HStack{
                        Spacer()
                        Text(item.tempo)
                            .fontWeight(.light)
                            .multilineTextAlignment(.trailing)
                            .font(.system(size: 8))
                    }.padding(.trailing)
                        .padding(.top, 0.5)
                        .padding(.bottom, -6)
                      
                 
                        
                        
                        
                        
                }.padding(.leading, 1.0)
              
            }.frame(width: 375, height: 105)
          
     
        }
      

    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: Item.testObject()[1])
    }
}
