import Foundation
import PlaygroundTester

@objcMembers
final class BowlingTests: TestCase {
    
    // Called once for the entire test class, before any tests are run.
    public override class func setUp() { }
    public override func setUp() throws { 
    }
    public override func tearDown() throws { }
    public override class func tearDown() { }
    
    func testGutterGame() {
        let g: Game = Game();
        
        for _ in 1...20 {
            g.roll(pins:0);
        }
        
        AssertEqual(g.score(), other: 0);
    }
    
    func testAllOnes() {
        let g: Game = Game();
        
        for _ in 1...20 {
            g.roll(pins: 1);
        }
        
        AssertEqual(g.score(), other: 20);
    }
}

final class Game {
    private var gameScore: Int = 0;
    
    func roll(pins: Int) {
        gameScore += pins;
    }
    
    func score() -> Int {
        return gameScore;
    }
}
