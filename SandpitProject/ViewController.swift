//
import UIKit
import FirebaseAnalytics
import FirebaseCrashlytics

class ViewController: UIViewController {

    @IBOutlet weak var roundedView: UIView!
    let sum: UIImage! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        ForceTouchShortcuts.addShortcut()
        roundedView.addBottomRoundedEdge(desiredCurve: 1.5)
        
        let swipeGestureRecognizerUp = UISwipeGestureRecognizer(target: self, action: #selector(closeMenu))
        swipeGestureRecognizerUp.direction = .up
        view.isUserInteractionEnabled = true
        view.addGestureRecognizer(swipeGestureRecognizerUp)
        
        let swipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(openMenu))
        swipeGestureRecognizer.direction = .down
        view.isUserInteractionEnabled = true
        view.addGestureRecognizer(swipeGestureRecognizer)
    }
    
    @IBAction func accessory_close(_ sender: Any) {
        closeMenu()

    }
    
    @IBAction func addItem(_ sender: Any) {
//        ForceTouchShortcuts.addShortcut()
        LoggerManager.shared.prepareTextFile()
    }
    
    @objc func openMenu() {
        Analytics.logEvent("ContextualMenu", parameters: ["Open":true])
        LoggerManager.shared.log(message: "Menu open...")
        LoggerManager.shared.logCD(message: "Menu close...")
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.roundedView.transform = CGAffineTransform(translationX: 0, y: (self.roundedView.frame.height) - 30)
        })
    }
    
    @objc func closeMenu() {
        Analytics.logEvent("ContextualMenu", parameters: ["Close":true])
        LoggerManager.shared.log(message: "Menu close...")
        LoggerManager.shared.loadLogs()
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.roundedView.transform = CGAffineTransform(translationX: 0, y: ((self.roundedView.frame.height)) * -1)
        })
    }
    
}

