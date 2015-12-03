

import WatchKit
import Foundation


class ViewCheese: WKInterfaceController {

    var order : Pizza!

    @IBAction func actionMozzarela() {
        sendToNext("Mozzarela")
    }

    @IBAction func actionCheddar() {
        sendToNext("Cheddar")
    }
    
    
    @IBAction func actionParmesano() {
        sendToNext("Parmesano")
    }
    
    @IBAction func actionNoCheese() {
        sendToNext("No Cheese")
    }
    
    
    func sendToNext(cheese: String){
        order.queso = cheese
        
        
        if order.inFinal == "true" {
            pushControllerWithName("idChange", context: order)
            
        }
        else {
            pushControllerWithName("IdIngredients", context: order)
        }
    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        order = context as! Pizza

        print(order.masa)
        
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
