module ResultCalc
  def rock
    @rock = {rock: "Draw",
             scissors: "Player 1 Win's",
             paper: "Player 1 Loses",
             lizard: "Player 1 Win's",
             spock: "Player 1 Loses"}
  end
  def paper
    @paper = {rock: "Player 1 Win's",
              scissors: "Player 1 Loses",
              paper: "Draw",
              spock: "Player 1 Win's",
              lizard: "Player 1 Loses"}
  end
  def scissors
    @scissors = {rock: "Player 1 Loses",
                 scissors: "Draw",
                 paper: "Player 1 Win's",
                 spock: "Player 1 Loses",
                 lizard: "Player 1 Win's"}
  end
  def lizard
    @lizard = {rock: "Player 1 Loses",
               scissors: "Player 1 Loses",
               paper: "Player 1 Win's",
               spock: "Player 1 Win's",
               lizard: "Draw"}
  end
  def spock
    @spock = {rock: "Player 1 Win's",
              scissors: "Player 1 Win's",
              paper: "Player 1 Loses",
              spock: "Draw",
              lizard: "Player 1 Loses"}
  end
end
