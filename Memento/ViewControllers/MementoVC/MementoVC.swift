//
//  MementoVC.swift
//  Memento
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import UIKit

class MementoVC: UIViewController {
    
    // MARK: - IBOutlets
    
    // MARK: - Properties
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        testMementoConcept()
        testMementoForExample()
    }
    
    // MARK: - Methods
    
    func testMementoConcept() {
        let originator = Originator(state: "Super-duper-super-puper-super.")
        let caretaker = Caretaker(originator: originator)
        
        caretaker.backup()
        originator.doSomething()
        
        caretaker.backup()
        originator.doSomething()
        
        caretaker.backup()
        originator.doSomething()
        
        print("\n")
        caretaker.showHistory()
        
        print("\nClient: Now, let's rollback!\n\n")
        caretaker.undo()
        
        print("\nClient: Once more!\n\n")
        caretaker.undo()
    }
    
    /// State and Command are often used together when the previous state of the
    /// object should be restored in case of failure of some operation.
    ///
    /// Note: UndoManager can be used as an alternative.
    
    func testMementoForExample() {
        
        let textView = UITextView()        
        let undoStack = UndoStack(textView)
        
        textView.text = "First Change"
        undoStack.save()
        
        textView.text = "Second Change"
        undoStack.save()
        
        textView.text = (textView.text ?? "") + " & Third Change"
        textView.textColor = .red
        undoStack.save()
        
        print(undoStack)
        
        print("Client: Perform Undo operation 2 times\n")
        undoStack.undo()
        undoStack.undo()
        
        print(undoStack)
    }

}
