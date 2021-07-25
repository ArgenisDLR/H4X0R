//
//  SystemThemeManager.swift
//  Bookie
//
//  Created by Argenis De La Rosa on 7/24/21.
//

import Foundation
import UIKit

class SystemThemeManager {
    
    static let shared = SystemThemeManager()
    
    private init() {}
    
    func handleTheme(darkMode: Bool, system: Bool) {
        
        // Handle System
        guard !system else {
            
            UIApplication.shared.windows.first?.overrideUserInterfaceStyle = .unspecified
            
            return
        }
        
        UIApplication.shared.windows.first?.overrideUserInterfaceStyle = darkMode ? .dark : .light
    }
}
