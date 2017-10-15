class Game

  require_relative 'computer'
  require_relative 'player'
  require_relative 'rock'
  require_relative 'paper'
  require_relative 'scissors'
  require_relative 'spock'
  require_relative 'lizard'

  attr_accessor :ask_second
  attr_reader :player_choice, :result, :players, :computer_choice, :current_turn, :current_player, :multiplayer_mode

  def self.new_game(player1, player2 = Computer.new)
    @game = Game.new(player1, player2)
  end

  def self.current
    @game
  end

  def initialize(player1, player2)
    @players = [player1, player2]
    @multiplayer_mode = (players[1].is_a? Player)
    soft_reset
  end

  def next_player
    @current_turn += 1
    @current_turn = 0 if @current_turn >= @players.length
    @current_player = players[current_turn]
  end

  def play
    @result = players[0].weapon_choice.versus(players[1].weapon_choice)
  end

  def result_string
    case result
      when "Draw"
        "It's a draw!"
      when "Wins"
        "#{players[0].name} wins!"
      when "Loses"
        "#{players[1].name} wins!"
    end
  end

  def soft_reset
    @ask_second = @multiplayer_mode
    @current_turn = 0
    @current_player = players[current_turn]
  end

end
