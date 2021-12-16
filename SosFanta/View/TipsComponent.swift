//
//  TipsComponent.swift
//  SosFanta
//
//  Created by felice di palma on 13/12/21.
//

import SwiftUI

struct TipsComponent: View {
    let imgCom: String
    let testo: String
    
    var body: some View {
        Text(testo)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .font(.system(size: 25))
            .padding()
            .frame(width: UIScreen.main.bounds.width - 32, height: UIScreen.main.bounds.height / 5, alignment: .bottomLeading)
            .background {
                Image(imgCom)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width - 32, height: UIScreen.main.bounds.height / 5)
                    .clipped()
                    .cornerRadius(34)
                    .overlay{
                        RadialGradient(colors: [Color("Principal"),Color("Transparent")], center: .bottomLeading, startRadius: 100, endRadius: 500)
                            .opacity(0.8)
                            .cornerRadius(34)
                    }
                    .shadow(color: .gray.opacity(0.4), radius: 10, x: 0, y: 0)
            }
    }
}

struct TipsComponent_Previews: PreviewProvider {
    static var previews: some View {
        TipsComponent(imgCom: "probabili", testo: "Probabili formazioni")
    }
}
