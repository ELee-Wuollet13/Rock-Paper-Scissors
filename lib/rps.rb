class RPS
  attr_accessor(:throw1, :throw2)
  attr_reader(:score1, :score2)
  def initialize(throw1, throw2)
    @throw1 = throw1
    @throw2 = throw2
    @@score1 = 0
    @@score2 = 0
  end
  def throw(hand)
    @throw1 = hand
  end
  def win_count
    p1=@@score1
    p2=@@score2
    "player one: " + p1.to_s + "| player two: " + p2.to_s
  end
  def computer
    throw_list = ["rock", "paper", "scissors"]
    @throw2 = throw_list[rand(3)]
  end
  def wins?
    if @throw1 == @throw2
      "TIE!"
    else
      if(@throw1 === "rock") & (@throw2 === "scissors") | (@throw1 === "paper") & (@throw2 === "rock") | (@throw1 === "scissors") & (@throw2 === "paper")
        @@score1 += 1
        true
      else
        @@score2 +=1
        false
      end
    end
  end
end
