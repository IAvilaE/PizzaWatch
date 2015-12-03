

import WatchKit
import Foundation


class viewPastaInterfaceController: WKInterfaceController {

    @IBOutlet var label: WKInterfaceLabel!
    var pasta : String = ""
    var order : Pizza!
    
    
    @IBAction func actionThin() {
        sendToNextView("Thin")
    }
    
    
    @IBAction func actionCrunch() {
        sendToNextView("Crunchy")
    }
    
    @IBAction func actionDouble() {
        sendToNextView("Double")
    }
    
    func sendToNextView(masa: String){
        order.masa = masa
        
        if order.inFinal == "true" {
            pushControllerWithName("idChange", context: order)
            
        }
        else {
            pushControllerWithName("IdCheese", context: order)
        }
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
