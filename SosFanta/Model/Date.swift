//
//  Date.swift
//  SosFanta
//
//  Created by felice di palma on 14/12/21.
//

import SwiftUI

let items: [Item] = [
    Item(title: "Calcio Spettacolo al Maradona",
         image: UIImage(named: "mainNotice")!, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard ",
         tempo: Date.now.formatted(date: .long, time: .shortened)),
    Item(title: "Chi gioca,chi no",
         image: UIImage(named: "Image")!, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard ",
         tempo: Date.now.formatted(date: .long, time: .shortened)),
    Item(title: "Roma senza Mancini e Zaniolo",
         image: UIImage(named: "img2")!, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard ",
         tempo: Date.now.formatted(date: .long, time: .shortened)),
    Item(title: "Annullato il sorteggio di Champions",
         image: UIImage(named: "img3")!, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard ",
         tempo: Date.now.formatted(date: .long, time: .shortened)),
    Item(title: "Ecco le avversarie del Napoli:",
         image: UIImage(named: "img4")!, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard ",
         tempo: Date.now.formatted(date: .long, time: .shortened))
]
