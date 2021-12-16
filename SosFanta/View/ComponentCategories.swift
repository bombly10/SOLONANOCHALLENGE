//
//  ComponentCategories.swift
//  SosFanta
//
//  Created by felice di palma on 13/12/21.
//

import SwiftUI

struct ComponentCategories: View {

    let imgCom: String
    let testo: String
    
    var body: some View {
        
        
        ZStack{
            
            RoundedRectangle(cornerRadius: 16)
            .fill(Color.white)
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.10), radius: 4)
            
            Image(imgCom)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .shadow(radius: 20)
                .overlay{
                    RadialGradient(colors: [Color("Principal"),Color("Transparent")], center: .bottomLeading, startRadius: 60, endRadius: 220)
                        .opacity(0.8)
                        .cornerRadius(16)
                }
               
            
        
            VStack{
                Spacer()
                HStack(){
                    Text(testo)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                    
                    Spacer()
                }
                
            }
            .padding(.leading, 9.0)
            .padding(.bottom, 3)
      
           
                
            
            
            
            
        }.frame(width: 160, height: 102)
    
        
        
        
        
      
    }
}

struct ComponentCategories_Previews: PreviewProvider {
    static var previews: some View {
        ComponentCategories(imgCom: "voti", testo: "Voti")
    }
}
