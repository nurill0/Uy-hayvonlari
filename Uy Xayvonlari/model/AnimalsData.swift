//
//  AnimalsData.swift
//  Uy Xayvonlari
//
//  Created by Nurillo Domlajonov on 27/11/21.
//

import Foundation
struct AnimalsData{
    let data: [CellDetailesModel] = [
    CellDetailesModel(animalName: "canary", animalImageName: "Kanareka", soundName: "canary"),
    CellDetailesModel(animalName: "cat", animalImageName: "Mushuk", soundName: "cat"),
    CellDetailesModel(animalName: "cow", animalImageName: "Sigir", soundName: "cow"),
    CellDetailesModel(animalName: "dog", animalImageName: "It", soundName: "dog"),
    CellDetailesModel(animalName: "donkey", animalImageName: "Eshshak", soundName: "donkey"),
    CellDetailesModel(animalName: "duck", animalImageName: "O`rdak", soundName: "duck"),
    CellDetailesModel(animalName: "goat", animalImageName: "Echki", soundName: "goat"),
    CellDetailesModel(animalName: "goose", animalImageName: "G`oz", soundName: "goose"),
    CellDetailesModel(animalName: "hen", animalImageName: "Tovuq", soundName: "hen"),
    CellDetailesModel(animalName: "horse", animalImageName: "Ot", soundName: "horse"),
    CellDetailesModel(animalName: "parrot", animalImageName: "To`ti", soundName: "parrot"),
    CellDetailesModel(animalName: "pigeon", animalImageName: "Kabutar", soundName: "pigeon"),
    CellDetailesModel(animalName: "quail", animalImageName: "Bedana", soundName: "quail"),
    CellDetailesModel(animalName: "rabbit", animalImageName: "Quyon", soundName: "rabbit"),
    CellDetailesModel(animalName: "rooster", animalImageName: "Xo`roz", soundName: "rooster"),
    CellDetailesModel(animalName: "sheep", animalImageName: "Qo`y", soundName: "sheep"),
    CellDetailesModel(animalName: "turkey", animalImageName: "Kurka", soundName: "turkey")
    ]
    
    func getItem(index: Int)->CellDetailesModel {
        return data[index]
    }
    func getSize()->Int{
        return data.count
    }
    
    
    
    
    
    
    
}
