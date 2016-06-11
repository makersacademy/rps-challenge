class Game

  attr_reader :player_name

  WINNER = {["PAPER", "SCISSORS"]=>"SCISSORS", 
            ["ROCK", "SCISSORS"]=>"ROCK", 
            ["PAPER", "ROCK"]=>"PAPER"}

  def initialize(player_name)
    @player_name = player_name
  end

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def self.instance
    @game
  end

  def random_choice
    ['ROCK', 'PAPER', 'SCISSORS'].sample
  end

  def check_winner(players_choice, computers_choice)
    win_choice = WINNER[[players_choice, computers_choice].sort]
    if win_choice == players_choice
      return "#{@player_name} wins!"
    elsif win_choice == computers_choice
      return "Computer wins!"
    else
      return "Draw"
    end 
  end

end