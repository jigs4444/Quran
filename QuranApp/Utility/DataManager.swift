//
//  DataManager.swift
//  QuranApp
//
//  Created by Jigar Thakkar on 16/03/21.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    func readFile() -> Quran? {
        
        let items = realm.objects(Quran.self)
        
        if items.count > 0 {
            
        } else {
            let path = Bundle.main.path(forResource: AppConstant.fileName, ofType: "txt") // file path for file "data.txt"
            let allValues = try! String(contentsOfFile: path!, encoding: String.Encoding.utf8)
            let myValues = allValues.components(separatedBy: "\n")
            
            let quran = Quran()
            for value in myValues {
                print(value)
                try! realm.write {
                    quran.values.append(value)
                }
            }
            
            try! realm.write {
                realm.add(quran)
            }

        }
        
        return items.first
    }
}
