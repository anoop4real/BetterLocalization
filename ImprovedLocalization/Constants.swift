//
//  Constants.swift
//  ImprovedLocalization
//
//  Created by Anoop M on 2020-02-15.
//  Copyright © 2020 Anoop M. All rights reserved.
//

import Foundation

struct LocalizationConstants {
    struct General {
        static let ok = Localize("General.OK")
        static let cancel = Localize("General.Cancel")
    }

    struct StartUP {
        static let scoreMessage = Localize("StartUP.ScoreMessage")
        static let welcomeMessage = Localize("StartUP.WelcomeMessage")
        static let continueMessage = Localize("StartUP.ContinueMessage")
        static let generatedMessage = Localize("StartUP.GeneratedMessage")
    }
}
