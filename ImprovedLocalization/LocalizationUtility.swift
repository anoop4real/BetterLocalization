//
//  LocalizationUtility.swift
//  ImprovedLocalization
//
//  Created by Anoop M on 2020-02-15.
//  Copyright © 2020 Anoop M. All rights reserved.
//

import Foundation
import UIKit

public func Localize(_ str: String, comment: String = "") -> String {
    return NSLocalizedString(str, comment: comment)
}

protocol StoryboardLocalizable {
    var translationKey: String? { get set }
}

extension UILabel: StoryboardLocalizable {
    @IBInspectable var translationKey: String? {
        get { return nil }
        set(key) {
            if let finalKey = key {
                // If the translated text  is same  as key then it means translation not set
                if Localize(finalKey) == finalKey {
                    assertionFailure("Translation unavilable for \(text ?? "")")
                } else {
                    text = Localize(finalKey)
                }
            } else {
                assertionFailure("Translation unavilable for \(text ?? "")")
            }
        }
    }

    @IBInspectable var upperCased: Bool {
        get { return false }
        set(cased) {
            if cased {
                text = text?.uppercased()
            }
        }
    }
}

extension UIButton: StoryboardLocalizable {
    @IBInspectable var translationKey: String? {
        get { return nil }
        set(key) {
            if let finalKey = key {
                // If the translated text  is same  as key then it means translation not set
                if Localize(finalKey) == finalKey {
                    assertionFailure("Translation unavilable for \(self.title(for: .normal) ?? "")")
                } else {
                    setTitle(Localize(finalKey), for: .normal)
                }
            } else {
                assertionFailure("Translation unavilable for \(self.title(for: .normal) ?? "")")
            }
        }
    }

    @IBInspectable var upperCased: Bool {
        get { return false }
        set(cased) {
            if cased {
                setTitle(currentTitle?.uppercased(), for: .normal)
            }
        }
    }
}
