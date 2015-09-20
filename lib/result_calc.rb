module ResultCalc
  def rock
    @rock = {rock: "Draw",
             scissors: "Win",
             paper: "Lose",
             lizard: "Win",
             spock: "Lose"}
  end
  def paper
    @paper = {rock: "Win",
              scissors: "Lose",
              paper: "Draw",
              spock: "Win",
              lizard: "Lose"}
  end
  def scissors
    @scissors = {rock: "Lose",
                 scissors: "Draw",
                 paper: "Win",
                 spock: "Lose",
                 lizard: "Win"}
  end
  def lizard
    @lizard = {rock: "Lose",
               scissors: "Lose",
               paper: "Win",
               spock: "Win",
               lizard: "Draw"}
  end
  def spock
    @spock = {rock: "Win",
              scissors: "Win",
              paper: "Lose",
              spock: "Draw",
              lizard: "Lose"}
  end
end
