
protocol AdvancedLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delgate: AdvancedLifeSupport?
    
    func assessSituation() {
        print("Can you tell me what happend?")
    }
    
    func medicalEmergency() {
        delgate?.performCPR()
    }
}

struct Paramedic: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delgate = self
    }
    
    func performCPR() {
        print("The paramedic does chest compressions, 30 per second.")
    }
}

class Doctor: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delgate = self
    }
    
    func performCPR() {
        print("The doctor does chest compressions, 30 per second.")
    }
    
    func useStethescope() {
        print("Listening for heart sound.")
    }
}

class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sings staying alive by the Beegees.")
    }
    
    func useElectricDrill() {
        print("Whirr...")
    }
}



let emilio = EmergencyCallHandler()
let angela = Surgeon(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()
