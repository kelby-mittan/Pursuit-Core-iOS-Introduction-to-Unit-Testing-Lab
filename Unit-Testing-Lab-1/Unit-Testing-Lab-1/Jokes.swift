//
//  Jokes.swift
//  Unit-Testing-Lab-1
//
//  Created by Kelby Mittan on 12/3/19.
//  Copyright © 2019 Kelby Mittan. All rights reserved.
//

import Foundation

struct Jokes: Decodable {
    let setup: String
    let punchline: String
}

extension Jokes {
    static func getJokes() -> [Jokes] {
        
        var joke = [Jokes]()
        
        
        guard let fileURL = Bundle.main.url(forResource: "jokes", withExtension: "json") else {
            fatalError("could not locate json file")
        }
        
        
        do {
            let data = try Data(contentsOf: fileURL)
                        
            let jokeData = try JSONDecoder().decode([Jokes].self, from: data)
            joke = jokeData
            
        } catch {
            fatalError("contents failed to load \(error)")
        }
        
        return joke
    }
}
