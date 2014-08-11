class BasketballTeam {
    var name:String
    var affiliation:String {
    willSet(newAffiliation) {
        println("Before: changing affiliation from \(affiliation) to \(newAffiliation)")
    }
    didSet(oldAffiliation){
        println("After: changed affiliation from \(oldAffiliation) to \(affiliation)")
    }
    }
    convenience init(name:String) {
        self.init(name:name, affiliation:"Intramural Team")
        println("Creating team named \(name)")
    }
    init(name:String, affiliation:String) {
        self.name = name
        self.affiliation = affiliation
    }
    func colorCommentary() -> String {
        return "The \(affiliation) \(name)"
    }
}

class Announcer {
    var name:String
    lazy var team:BasketballTeam = BasketballTeam(name:"Old and Tired")
    init(name:String){
        self.name = name
    }
    deinit {
        // cleanup resources
    }
}

var announcer = Announcer(name: "Booming Voice")
println("Created \(announcer.name)")
announcer.team.colorCommentary()



class ProfessionalBasketballTeam:BasketballTeam {
    let league: String?
    convenience init() {
        self.init(name:"Globetrotters", affiliation:"Harlem", league:nil)
    }
    init(name: String, affiliation: String, league:String?) {
        self.league = league
        super.init(name: name, affiliation: affiliation)
    }
    override func colorCommentary() -> String {
        var comment = super.colorCommentary()
        if let validLeague = league {
            comment += "of the \(league)"
        }
        return comment
    }
}
class CollegeBasketballTeam:BasketballTeam {
    let conference: String
    init(name: String, affiliation: String, conference:String) {
        self.conference = conference
        super.init(name: name, affiliation: affiliation)
    }
    override func colorCommentary() -> String {
        return super.colorCommentary() + " of the \(conference)"
    }
}
