
protocol AdvancedLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delgate: AdvancedLifeSupport?
}
