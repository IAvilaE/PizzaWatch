

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var sizer: WKInterfaceSlider!
    @IBOutlet var sizeLabel: WKInterfaceLabel!
    
    
    var values : Pizza!
    var sizeValue : Float = 0
    var sizeString : String = ""
    
    
    @IBAction func refreshSize(value: Float) {
        sizeValue = value
        switch sizeValue {
        case 1:
            sizeString = "Small"
        case 2:
            sizeString = "Medium"
        case 3:
            sizeString = "Large"
        default:
            sizeValue = 1
        }
        
        self.sizeLabel.setText(sizeString)
        
    }
    
    
    @IBAction func actionSize() {
        values = Pizza()
        
        values.size = sizeString
        
        if values.inFinal == "true" {
            pushControllerWithName("idChange", context: values)
            
        }
        else {
        pushControllerWithName("IdentificadorPasta", context: values)
        }
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if context != nil {
            values = context as! Pizza
            
        }
        // Configure interface objects here.
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
