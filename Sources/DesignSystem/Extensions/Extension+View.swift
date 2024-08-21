//
//  Extension+View.swift
//  
//
//  Created by Bodgar Espinosa Miranda on 19/08/24.
//

import UIKit

public extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
