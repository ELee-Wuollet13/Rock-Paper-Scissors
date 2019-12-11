require('rspec')
require('rps')

describe(RPS) do
  describe('#wins') do
    it("returns true if rock is the object and scissors is the argument") do
      game = RPS.new("rock", "scissors")
      expect(game.wins?).to(eq(true))
    end
    it("returns true if paper is the object and rock is the argument") do
      game = RPS.new("paper", "rock")
      expect(game.wins?).to(eq(true))
    end
    it("returns false if rock is the object and scissors is the argument") do
      game = RPS.new("scissors", "rock")
      expect(game.wins?).to(eq(false))
    end
    it("returns 'TIE!' if rock and rock is the argument") do
      game = RPS.new("rock", "rock")
      expect(game.wins?).to(eq("TIE!"))
    end
    it("returns true if scissors is the object and paper is the argument") do
      game = RPS.new("scissors", "paper")
      expect(game.wins?).to(eq(true))
    end
    it('if player one wins, add point') do
      game = RPS.new("rock", "scissors")
      game.wins?
      game.throw1 = "paper"
      game.throw2 = "rock"
      game.wins?
      expect(game.win_count).to(eq("player one: 2| player two: 0"))
    end
    it("returs players throws") do
      game = RPS.new("rock", "paper")
      expect(game.throw1).to(eq("rock"))
      expect(game.throw2).to(eq("paper"))
    end
    it("returs players throws when change") do
      game = RPS.new("rock", "paper")
      game.throw1 = "paper"
      game.throw2 = "rock"
      expect(game.throw1).to(eq("paper"))
      expect(game.throw2).to(eq("rock"))
    end
    it("returs players throws") do
      game = RPS.new("rock", "paper")
      expect(game.throw1).to(eq("rock"))
      expect(game.computer).to(eq("paper"))
    end
  end
end
