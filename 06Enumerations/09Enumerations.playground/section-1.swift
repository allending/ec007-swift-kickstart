enum BasketballPosition {
    
    var uniformNumber:Int {
    get {
        switch self {
    case .PointGuard(let uniformNumber, _):
        return uniformNumber
    case .ShootingGuard(let uniformNumber, _):
            return uniformNumber
    case .SmallForward(let uniformNumber, _):
            return uniformNumber
    case .PowerForward(let uniformNumber, _):
                return uniformNumber
    case .Center(let uniformNumber, _):
                return uniformNumber
        }
    }
    }
    
    var playerName:String {
    get {
        switch self {
    case .PointGuard(_, let playerName):
        return playerName
    case .ShootingGuard(_, let playerName):
            return playerName
    case .SmallForward(_, let playerName):
            return playerName
    case .PowerForward(_, let playerName):
                return playerName
    case .Center(_, let playerName):
                return playerName
        }
    }
    }
    
    func playerDescription() -> String {
        return "The ball handler is number \(self.uniformNumber), \(self.playerName)."
    }

//let tonyParker = BasketballPosition.PointGuard(9, "Tony Parker")
//let timDuncan = BasketballPosition.PowerForward(21, "Tim Duncan")

var ballHandler = BasketballPosition.PowerForward(21, "Tim Duncan")
var colorCommentary = ballHandler.playerDescription()