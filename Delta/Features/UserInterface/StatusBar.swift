//
//  StatusBar.swift
//  Delta
//
//  Created by Chris Rittenhouse on 4/30/23.
//  Copyright © 2023 Lit Development. All rights reserved.
//

import SwiftUI

import Features

enum StatusBarStyle: Int, CaseIterable, CustomStringConvertible
{
    case light = 1
    case dark = 3
    
    var description: String {
        switch self
        {
        case .light: return "Light Content"
        case .dark: return "Dark Content"
        }
    }
}

extension StatusBarStyle: LocalizedOptionValue
{
    var localizedDescription: Text {
        Text(self.description)
    }
}

struct StatusBarOptions
{
    @Option
    var isOn: Bool = false
    
    @Option(name: "Use Pause Menu Toggle",
            description: "When enabled, a pause menu button will be shown to toggle showing the status bar. When disabled, the status bar will always be shown when this feature is enabled.")
    var useToggle: Bool = false
    
    @Option(name: "Status Bar Style",
            description: "Choose between a light or dark status bar style.",
            values: StatusBarStyle.allCases)
    var style: StatusBarStyle = .light
}
