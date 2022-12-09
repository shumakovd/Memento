//
//  ConcreteMemento.swift
//  Memento
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

/// The Concrete Memento contains the infrastructure for storing the
/// Originator's state.
class ConcreteMemento: Memento {

    /// The Originator uses this method when restoring its state.
    private(set) var state: String
    private(set) var date: Date

    init(state: String) {
        self.state = state
        self.date = Date()
    }

    /// The rest of the methods are used by the Caretaker to display metadata.
    var name: String { return state + " " + date.description.suffix(14).prefix(8) }
}
