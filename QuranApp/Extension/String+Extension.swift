//
//  String+Extension.swift
//  QuranApp
//
//  Created by Jigar Thakkar on 16/03/21.
//

import Foundation

extension String {
    
    var getQuranText: String {
        let values = self.components(separatedBy: "|")
        return values.last ?? ""
    }
}
