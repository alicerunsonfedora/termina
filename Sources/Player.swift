class Player: Entity {
    var experience, level: UInt

    /**
    */
    func heal(_ amount: UInt) {
        health += amount

        if (health > 100) {
            health = 100
        }
    }

    func levelUp(_ amount: UInt) {
        level += amount
        experience = 0
    }

    override init(_ myName: String) {
        super.init(myName, "Player", 100)
        experience = 0
        level = 0
    }
}