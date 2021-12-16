//
//  Item.swift
//  SosFanta
//
//  Created by felice di palma on 10/12/21.
//
import SwiftUI




public class Item: Identifiable{
    
    init(title: String, image: UIImage, description: String, tempo: String) {
        self.title = title
        self.image = image
        self.description = description
        self.tempo = tempo
    }
    
    public let id: String = UUID().uuidString
    let title: String
    let image: UIImage
    let description: String
    let tempo: String
    
}


#if DEBUG

extension Item{
    static func testObject() ->[Item]{
        return[
            Item.init(title: "Calcio Spettacolo al Maradona",
                      image: UIImage(named: "mainNotice")!, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard ",
                      tempo: Date.now.formatted(date: .long, time: .shortened)),
            Item.init(title: "Chi gioca,chi no",
                      image: UIImage(named: "Image")!, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard ",
                      tempo: Date.now.formatted(date: .long, time: .shortened)),
            Item.init(title: "Roma senza Mancini e Zaniolo",
                      image: UIImage(named: "img2")!, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard ",
                      tempo: Date.now.formatted(date: .long, time: .shortened)),
            Item.init(title: "Annullato il sorteggio di Champions",
                      image: UIImage(named: "img3")!, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard ",
                      tempo: Date.now.formatted(date: .long, time: .shortened)),
            Item.init(title: "Ecco le avversarie del Napoli:",
                      image: UIImage(named: "img4")!, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard ",
                      tempo: Date.now.formatted(date: .long, time: .shortened))
        ]
    }
}
#endif
