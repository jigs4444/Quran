//
//  Toster.swift
//  QuranApp
//
//  Created by Jigar Thakkar on 16/03/21.
//

import Foundation
import Toast_Swift

class Toster {
    static let shared = Toster()
    
    func showTost(view: UIView,text: String) {
        var style = ToastStyle()
        
        style.messageColor = .white
        
        ToastManager.shared.style = style
        view.makeToast(text)
        
        ToastManager.shared.isTapToDismissEnabled = true
        
        // toggle queueing behavior
        ToastManager.shared.isQueueEnabled = true
    }
}
