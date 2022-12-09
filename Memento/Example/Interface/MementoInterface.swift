//
//  MementoInterface.swift
//  Memento
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

protocol MementoInterface: CustomStringConvertible {

    var text: String { get }
    var date: Date { get }
}
