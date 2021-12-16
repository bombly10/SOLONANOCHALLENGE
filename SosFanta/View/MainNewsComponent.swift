//
//  MainNewsComponent.swift
//  SosFanta
//
//  Created by felice di palma on 13/12/21.
//

import SwiftUI

struct MainNewsComponent: View {
    let item: Item
    
    var body: some View {
        
        ZStack{
            Rectangle()
            .fill(Color.white)
            .frame(width: 380, height: 280)
            .cornerRadius(10)
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 5, y: 4)

            VStack(alignment: .leading){
                Image(uiImage: item.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 380, height: 180)
                    .cornerRadius(10)
                   
             
                VStack(alignment: .leading){
                    Text(item.title)
                        .fontWeight(.bold)
                        .lineLimit(nil)


                    Text(item.description)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                        .font(.system(size: 14))
                    
                    HStack(alignment: .bottom){
                        Spacer()
                        Text(item.tempo)
                            .fontWeight(.light)
                            .multilineTextAlignment(.trailing)
                            .font(.system(size: 8))

                    }
                   
                  
                    Spacer()

                }
                .padding(.leading,10)
                .padding(.trailing,10)
               
             

            }
            .frame(width: 380, height: 280)


  }
        
}
}

struct MainNewsComponent_Previews: PreviewProvider {
    static var previews: some View {
        MainNewsComponent(item: Item.testObject()[0])
    }
}
