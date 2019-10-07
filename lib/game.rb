class Game

  OUTCOME = { 
    rock: { rock: :draw, paper: :lose, scissors: :win, fire: :win, sponge: :win, water: :lose, air: :lose },
    scissors: { scissors: :draw, rock: :lose, paper: :win, sponge: :win, air: :win, fire: :lose, water: :lose },
    paper: { paper: :draw, scissors: :lose, rock: :win, air: :win, water: :win, fire: :lose, sponge: :lose },
    fire: { fire: :draw, scissors: :win, sponge: :win, paper: :win, rock: :lose, water: :lose, air: :lose },
    sponge: { sponge: :draw, paper: :win, air: :win, water: :win, rock: :lose, fire: :lose, scissors: :lose },
    water: { water: :draw, rock: :win, scissors: :win, fire: :win, air: :lose, paper: :lose, sponge: :lose },
    air: { air: :draw, water: :win, rock: :win, fire: :win, scissors: :lose, sponge: :lose, paper: :lose }
  }

  attr_reader :player, :move, :comp_move

  def initialize(session_values)
    @player = session_values['player']
    @move = session_values['move']
    @comp_move = session_values['comp_move']
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
    return if @comp_move.nil?
    OUTCOME[@move][@comp_move]
  end


end