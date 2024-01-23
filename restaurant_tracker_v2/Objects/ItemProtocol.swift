//
//  ItemProtocol.swift
//  restaurant_tracker_v2
//
//  Created by Tyler Radke on 1/22/24.
//

import Foundation

public protocol Item {
    var name: String { get set }
    var itemType: DisplayMode { get }
}
