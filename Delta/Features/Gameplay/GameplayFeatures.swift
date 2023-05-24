//
//  GameplayFeatures.swift
//  Delta
//
//  Created by Chris Rittenhouse on 4/30/23.
//  Copyright © 2023 Lit Development. All rights reserved.
//

import Features

struct GameplayFeatures: FeatureContainer
{
    static let shared = GameplayFeatures()
    
    @Feature(name: "Game Audio Customization",
             description: "Change how and when audio is played.",
             options: GameAudioOptions())
    var gameAudio
    
    @Feature(name: "Game Screenshots",
             description: "Capture screenshots of gameplay to your files or photos.",
             options: GameScreenshotOptions())
    var screenshots
    
    @Feature(name: "Fast Forward",
             description: "Speed up gameplay to save time.",
             options: FastForwardOptions())
    var fastForward
    
    @Feature(name: "Save State Rewind",
             description: "Automatically save state at a given interval on supported systems. Allows you to rewind to a recent game state to undo mistakes.",
             options: SaveStateRewindOptions())
    var rewind
    
    @Feature(name: "Auto-Load Save States",
             description: "Load your most recent auto save state when you launch a game. Allows you to seamlessly jump from game to game.")
    var autoLoad
    
    @Feature(name: "Cheat Codes",
             description: "Modify games using cheat codes. Supports Action Replay, Code Breaker, Game Genie, and GameShark codes on select systems.")
    var cheats
    
    @Feature(name: "Quick Settings Menu",
             description: "Access common gameplay settings quickly from the pause menu or a controller/skin button.",
             options: QuickSettingsOptions())
    var quickSettings
    
    private init()
    {
        self.prepareFeatures()
    }
}
