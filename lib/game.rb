class Game  
  
  attr_reader :player_1_name, :user_choice, :comp_choice

  def initialize(session)
    @player_1_name = session["player_1_name"]
    @user_choice = session["user_choice"]
    @comp_choice = session["comp_choice"]
  end

  def win?
    decide_winner == :win
  end

  def lose?
    decide_winner == :lose
  end

  def draw?
    decide_winner == :draw
  end

  private 

  def decide_winner
    win_hash = 
      {
        "Rock" => { "Rock" => :draw, "Paper" => :lose, "Scissors" => :win },
        "Paper" => { "Rock" => :win, "Paper" => :draw, "Scissors" => :lose },
        "Scissors" => { "Rock" => :lose, "Paper" => :win, "Scissors" => :draw }
      }
    win_hash[@user_choice][@comp_choice]
  end 
  
end
