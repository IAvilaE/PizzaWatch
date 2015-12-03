

import WatchKit
import Foundation


class viewConfirmation: WKInterfaceController {

    var order : Pizza!
    
    
    @IBAction func onSize() {
              pushControllerWithName("IdSize", context: order)
    }
    
    
    
    @IBAction func onPasta() {
        pushControllerWithName("IdentificadorPasta", context: order)
        
        
    }
    
    
    @IBAction func onCheese() {
        
              pushControllerWithName("IdCheese", context: order)
        
    }
    
    @IBAction func onIngredients() {
              pushControllerWithName("IdIngredients", context: order)
    }
    
    
    @IBAction func onPlaceOrder() {
              pushControllerWithName("IdFinal", context: order)
    }
    
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        order = context as! Pizza
        order.inFinal = "true"
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
