class Game

  def game_outcomes
    @rock =     {paper: "YOU LOSE!",   rock: "IT'S A DRAW", scissors: "YOU WIN!"}
    @paper =    {paper: "IT'S A DRAW", rock: "YOU WIN!",    scissors: "YOU LOSE!"}
    @scissors = {paper: "YOU WIN!",    rock: "YOU LOSE!",   scissors: "IT'S A DRAW"}
  end

=begin

  signal1 = computer.generate_move
  signal2 = player.chose(move)


=end






end
