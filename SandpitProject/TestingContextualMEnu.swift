//
import Foundation
import UIKit

class TestingContextualMEnu: CBKContextualMenuViewController, CBKContextualMenuViewControllerDelegate, CBKContextualMenuViewControllerDataSource {
    func contextualMenuOptionList() -> [CBKContextualMenuOption] {
        [CBKContextualMenuOption(withIcon: "message", andTitle: "Mensajes")]
    }
    
    func pressed(option: Int) {
        print("Hola")
    }
    
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        contextualMenuViewControllerDelegate = self
        contextualMenuViewControllerDataSource = self
        
        
    }
    
    @IBAction func openMenuAction(_ sender: Any) {
        
    }
    
    
}
