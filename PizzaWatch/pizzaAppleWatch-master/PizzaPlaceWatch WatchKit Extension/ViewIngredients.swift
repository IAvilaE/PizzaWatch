

import WatchKit
import Foundation


class ViewIngredients: WKInterfaceController {

    var order: Pizza!
    
    @IBOutlet var pepperoni: WKInterfaceSwitch!
    @IBOutlet var actionPeppe: WKInterfaceSwitch!
    
    @IBOutlet var jam: WKInterfaceSwitch!
    @IBOutlet var turkey: WKInterfaceSwitch!
    @IBOutlet var olives: WKInterfaceSwitch!
    @IBOutlet var onions: WKInterfaceSwitch!
    @IBOutlet var pineapple: WKInterfaceSwitch!
    
    @IBAction func actionJam(value: Bool) {
        if value {
            order.ingredientes[0] = "Jam"
            print(order.ingredientes)
        } else {
            order.ingredientes[0] = ""
        }
        
    }
    
    
    @IBAction func actionPepperoni(value: Bool) {
        if value {
            order.ingredientes[1] = "Pepperoni"
            print(order.ingredientes)
        } else {
            order.ingredientes[1] = ""
        }
        
        
    }
    
    
    
    @IBAction func actionTurkey(value: Bool) {
        if value {
            order.ingredientes[2] = "Turkey"
            print(order.ingredientes)
        } else {
            order.ingredientes[2] = ""
        }
    }
    
    
    @IBAction func actionOlives(value: Bool) {
        if value {
            order.ingredientes[3] = "Olives"
            print(order.ingredientes)
        } else {
            order.ingredientes[3] = ""
        }
    }
    
    
    @IBAction func actionOnion(value: Bool) {
        
        if value {
            order.ingredientes[4] = "Onions"
            print(order.ingredientes)
        } else {
            order.ingredientes[4] = ""
        }
        
        
    }
    
    @IBAction func actionPineapple(value: Bool) {
        if value {
            order.ingredientes[5] = "Pineapple"
            print(order.ingredientes)
        } else {
            order.ingredientes[5] = ""
        }
        
    }
    
    
    @IBAction func actionOk() {
        pushControllerWithName("IdPlaceOrder", context: order)
        
        
    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        order = context as! Pizza
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

}
