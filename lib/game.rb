require './lib/player'

class Game
  attr_reader :players, :round, :choices, :outcome

  def initialize(*players)

    if players.length < 2
      @players = [players[0], Player.new('Machine')]
    else
      @players = players
    end

    @round = 1
    @options = ["Rock", "Paper", "Scissors"]
    @choices = []
  end

  def machine_choice
    @options.sample
  end

  def get_choices(*choices)
    if choices.length < 2
      @choices = choices
      @choices << machine_choice
    else
      @choices = choices
      puts "2 player"
    end
  end

  def compares(arg)
    if arg.include?("Rock") && arg.include?("Scissors")
      winner_index = arg.index("Rock")
    elsif arg.include?("Rock") && arg.include?("Paper")
      winner_index = arg.index("Paper")
    else
      winner_index = arg.index("Scissors")
    end
    winner = @players[winner_index].name
  end

  def battle

    if @choices[0] == @choices[1]
      @outcome = "Draw!"
    elsif
      winner = compares(@choices)
      @outcome = "#{winner} wins Round #{@round}!"
    end
    @round +=1
    @outcome
  end



end
