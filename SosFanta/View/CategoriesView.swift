//
//  CategoriesView.swift
//  SosFanta
//
//  Created by felice di palma on 13/12/21.
//

import SwiftUI

struct CategoriesView: View {
    
    let collectionIMG: [String] = ["voti","assist","indisponibili","mercato","scambi","infortuni"]
    let collectionCat: [String] = ["Voti","Assist","Indisponibili","Mercato","Scambi","Infortuni"]
    
    var body: some View {
        NavigationView{
            VStack(spacing: 20){
                
                HStack{
                    Spacer()
                    ComponentCategories(imgCom: collectionIMG[0],testo: collectionCat[0])
                    Spacer()
                    ComponentCategories(imgCom: collectionIMG[1],testo: collectionCat[1])
                    Spacer()
                }
                
                HStack{
                    Spacer()
                    ComponentCategories(imgCom: collectionIMG[2],testo: collectionCat[2])
                    Spacer()
                    ComponentCategories(imgCom: collectionIMG[3],testo: collectionCat[3])
                    Spacer()
                }
                
                HStack{
                    Spacer()
                    ComponentCategories(imgCom: collectionIMG[4],testo: collectionCat[4])
                    Spacer()
                    ComponentCategories(imgCom: collectionIMG[5],testo: collectionCat[5])
                    Spacer()
                }
                Spacer()
                
            }.padding(.top,15)
            .navigationTitle("Categories")
        }
 
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
