class Turn
  GAME_RULES = {
    rock: {rock: :draw, paper: :lose, scissors: :win},
    paper: {rock: :win, paper: :draw, scissors: :lose},
    scissors: {rock: :lose, paper: :win, scissors: :draw}
  }

  attr_reader :player_name, :player_weapon, :opponent_weapon

def initialize(options)
  @player_name = options["player_name"]
  @player_weapon = options["player_weapon"]
  @opponent_weapon = options["opponent_weapon"]
end

def win?
  result == :win
end

def lose?
  result == :lose
end

def draw?
  result == :draw
end


private

def result
  return if @opponent_weapon.nil?
  GAME_RULES[@player_weapon][@opponent_weapon]

end
end
