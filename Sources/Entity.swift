class Entity {
    var name, type: String
    var health: UInt

    func takeDamage(_ amount: UInt) {
        self.health -= amount
    }

    init(_ myName: String, _ myType: String, _ myHealth: UInt) {
        self.name = myName
        self.type = myType
        self.health = myHealth
    }

    
    deinit {
        print("\(name) has been killed.")
    }
    
}