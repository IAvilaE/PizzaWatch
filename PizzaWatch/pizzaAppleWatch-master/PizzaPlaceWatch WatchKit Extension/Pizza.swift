

import WatchKit

class Pizza: NSObject {
    
    var size : String!
    var masa : String!
    var queso: String!
    var ingredientes : [String] = ["","","","","",""]
    
    var inFinal : String = "false"
    
    func setFinal(f: String){
        self.inFinal = f
        
    }
    
    override init() {
        self.inFinal = "false"
        
    }
    func getFinal() -> String {
        return self.inFinal
    }
    
    func setSizee(si: String){
        self.size = si
    }
    
    func setMasaa(masa: String){
        self.masa = masa
    }
    
    func setQuesoo(queso: String){
        self.queso = queso
    }
    
    func setIngredientess(ingredientes: [String]){
        self.ingredientes = ingredientes
    }
    
    func getSize() -> String{
        return self.size
    }
    
    func getMasa() -> String{
        return self.masa
    }
    
    func getQueso() -> String  {
        return self.queso
        
    }
    
    func getIngredientes() -> [String] {
        return self.ingredientes
    }
    

}
