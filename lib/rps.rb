require './lib/player'

class RPS

  def initialize(player1, player2 = Player.new('Computer'))
    @game_options = {
      1 => "Rock",
      2 => "Paper",
      3 => "Scissors"
    }
    @player1 = player1
    @player2 = player2
    @players = [player1, player2]

    @computer_choice = nil
  end

  #--- Class methods and variables
  def self.create(player1, player2)
    @game = RPS.new(player1, player2)
  end

  def self.instance
    @game
  end

  #----

  def player1
    @player1
  end

  def player2
    @player2
  end

  def get_turn #this is not picking the change - its always player 1
    @players.first
  end

  def change_turn #this is changing
    @players.reverse!
  end

  # def get_player_choice
  #   @players.first.user_choice
  # end

  # def get_computer_choice
  #   @computer_choice = play
  # end

  def completed_run
    result = @players.select { |player| player.assigned_choice? == true }
  end

  def reset_game
    @players.map {|player| player.reset}
  end

  # def assign_choices
  #   p1 = get_player_choice
  #   p2 = get_computer_choice

  #   return [{name: player1.name, choice:p1},{name: player2.name, choice:p2}]
  # end

  def play
    @game_options[rand(1..@game_options.size)]
  end


end

