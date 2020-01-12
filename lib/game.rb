class Game
  
  def self.create(player_1)
    @game = Game.new(player_1)
  end
    
  def self.instance
    @game
  end

  def initialize(player)
    @player = player
  end

  def player_name
    @player.name
  end

  def rock_paper_scissors
    ["Rock", "Paper", "Scissors"].sample
  end

  def result(player_selection, game_selection)
    if player_selection == game_selection
      return "Draw!!" 
    elsif player_selection == "Rock" && game_selection == "Scissors"
      return "You won!!"
    elsif player_selection == "Scissors" && game_selection == "Paper"
      return "You won!!"
    elsif player_selection == "Paper" && game_selection == "Rock"
      return "You won!!"
    else
      return "Game wins"
    end
  end


  
end