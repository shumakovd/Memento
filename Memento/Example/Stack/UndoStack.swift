//
//  UndoStack.swift
//  Memento
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import UIKit
import Foundation

class UndoStack: CustomStringConvertible {

    private lazy var mementos = [MementoInterface]()
    private let textView: UITextView

    init(_ textView: UITextView) {
        self.textView = textView
    }

    func save() {
        mementos.append(textView.memento)
    }

    func undo() {
        guard !mementos.isEmpty else { return }
        textView.restore(with: mementos.removeLast())
    }

    var description: String {
        return mementos.reduce("", { $0 + $1.description })
    }
}
