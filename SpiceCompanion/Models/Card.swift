//
//  Card.swift
//  Spice
//
//  Created by Gianni on 09/05/2020.
//  Copyright © 2020 Rodepanda. All rights reserved.
//

import Foundation

/// A digital NFC card that can be used to login to Spice.
struct Card: Identifiable, Equatable, Codable {

    /// The unique internal identifier of this card.
    ///
    /// This is typically formatted as `E004` followed by 12 hexadecimal characters, but several newer and
    /// older formats exist that can be used.
    var id: String

    /// The human-readable display name of this card.
    var name: String

    // MARK: - Enumerations

    private enum CodingKeys: String, CodingKey {
        case name
        case id = "cardNumber" //backwards compatibility
    }
}
