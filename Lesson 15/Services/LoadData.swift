//
//  LoadData.swift
//  Lesson 15
//
//  Created by Marcello Lima on 05/10/21.
//

import Foundation
import SwiftUI


class LoadData : ObservableObject {
    
    public func loadData() -> [Video] {
        let url = URL(string: "https://codewithchris.github.io/Module5Challenge/Data.json")

        //print("três...")
        // Find the Data.
        do {
            let data = try Data(contentsOf: url!)
            // JSON decoding
            let decoder = JSONDecoder()
            //print("quatro...")
            do {
                let videosData = try decoder.decode([Video].self, from: data)
                
//                for r in pizzasData {
//                    r.id = UUID()
//                }
                return videosData
            }
            catch {
                print(error)
            }
        }
        catch {
            print(error)
        }
        return [Video]()
    }
    
}
