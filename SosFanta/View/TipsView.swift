//
//  TipsView.swift
//  SosFanta
//
//  Created by felice di palma on 13/12/21.
//

import SwiftUI

struct TipsView: View {
    let collectionIMG: [String] = ["ultime","chiSchierare","probabili"]
    let collectionCat: [String] = ["Ultime dai campi","Chi schierare","Probabili formazioni"]
    
    var body: some View {
        NavigationView{
            VStack(spacing: 20) {
                TipsComponent(imgCom: collectionIMG[0],testo: collectionCat[0])
                    
                
        
                    TipsComponent(imgCom: collectionIMG[1],testo: collectionCat[1])
              
            
                    TipsComponent(imgCom: collectionIMG[2],testo: collectionCat[2])
                Spacer()
            }
            .navigationTitle("Tips")
            .padding(.top, 15)
        }
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
