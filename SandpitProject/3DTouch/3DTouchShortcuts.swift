//
import Foundation
import UIKit

public class ForceTouchShortcuts {
    public static func addShortcut() {
        UIApplication.shared.shortcutItems = nil
        let icon = UIApplicationShortcutIcon(templateImageName: "icon1")
        let item = UIApplicationShortcutItem(type: "url", localizedTitle: "Compras", localizedSubtitle: "Pedidos recientes", icon: icon)
        
        UIApplication.shared.shortcutItems?.append(item)
        
        let icon2 = UIApplicationShortcutIcon(templateImageName: "icon2")
        let item2 = UIApplicationShortcutItem(type: "url", localizedTitle: "Gastos", localizedSubtitle: "Gastos mensuales", icon: icon2)
        
        UIApplication.shared.shortcutItems?.append(item2)
        
        let icon3 = UIApplicationShortcutIcon(templateImageName: "icon3")
        let item3 = UIApplicationShortcutItem(type: "url", localizedTitle: "Inicio", localizedSubtitle: "Página principal del banco", icon: icon3)
        
        UIApplication.shared.shortcutItems?.append(item3)
        
        let icon4 = UIApplicationShortcutIcon(type: .message)
        let item4 = UIApplicationShortcutItem(type: "url", localizedTitle: "Mensajes", localizedSubtitle: "Bandeja de entrada", icon: icon4)
        
        UIApplication.shared.shortcutItems?.append(item4)
    }
}
