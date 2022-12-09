//
//  Memento.swift
//  Memento
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

/// The Memento interface provides a way to retrieve the memento's metadata,
/// such as creation date or name. However, it doesn't expose the Originator's
/// state.
protocol Memento {

    var name: String { get }
    var date: Date { get }
}
