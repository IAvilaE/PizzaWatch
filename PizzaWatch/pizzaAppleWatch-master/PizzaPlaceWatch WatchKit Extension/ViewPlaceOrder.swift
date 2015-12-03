

import WatchKit
import Foundation


class ViewPlaceOrder: WKInterfaceController {

    @IBOutlet var labelSize: WKInterfaceLabel!
    @IBOutlet var labelMasa: WKInterfaceLabel!
    @IBOutlet var labelCheese: WKInterfaceLabel!
    @IBOutlet var labelIngredients: WKInterfaceLabel!
    
    @IBOutlet var labelIng: WKInterfaceLabel!
    
    @IBOutlet var ing3: WKInterfaceLabel!
    var order : Pizza!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        order = context as! Pizza
        self.labelSize.setText(order.size)
        self.labelMasa.setText(order.masa)
        self.labelCheese.setText(order.queso)
      
        var food = order.ingredientes[0] + " " + order.ingredientes[1]
        self.labelIng.setText(food)
        food = order.ingredientes[2] + " " + order.ingredientes[3]
        self.labelIngredients.setText(food)
        food = order.ingredientes[4] + " " + order.ingredientes[5]
        self.ing3.setText(food)
        
        
    }
    
    @IBAction func actionPlaceOrder() {
        pushControllerWithName("IdFinal", context: order)
        
        
    }
    
    @IBAction func actionChangeOrder() {
        
        order.inFinal = "true"
        pushControllerWithName("idChange", context: order)
        
    }
    
    

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

}
