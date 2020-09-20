require_relative './player.rb'
require_relative 'computer.rb'
class Game 
  attr_reader :player1, :player1_turn, :player2_turn, :winner, :loser, :message,  :who_is_winning, :who_is_losing

  def initialize(player1, player2 = Computer.new)
    @player1 = Player.new(player1)
    @player2 = player2
    @ai_player = computer?
    @who_is_winning = @player1
    @who_is_losing = @player2
  end

  def computer?
    @player2.class == Computer
  end

  def self.instance
    @game
  end

  def self.build(player1)
    @game = Game.new(player1)
  end

  def img_value(img_hash)
    @player1_turn = img_hash.first.split(".").first
  end

  def play
    @player2_turn = @player2.play if computer?
    
    values = get_hand_values
    if values[0] > values [1]
      @player1.winner
      @player2.loser
    elsif values[0] < values[1]
      @player2.winner
      @player1.loser
    else 
      @player1.drew
      @player2.drew
    end
    @game_played = true
    set_table_position
    results
  end

  def get_hand_values
    num_den = { "rock" => -1.to_f, "paper" => 0.5.to_f, "scissors" => 2.to_f }
    p1_turn_value = num_den[@player1_turn]
    p2_turn_value = num_den[@player2_turn]
    [(p1_turn_value/p2_turn_value), (p2_turn_value/p1_turn_value)]
  end

  def results
    if !@player1.won_last_game && !@player2.won_last_game
      @message = "It's a draw! You both picked #{@player1_turn}"
    elsif @player1.won_last_game 
      @message = "#{@player1.name} wins! #{@player1_turn} beats #{@player2_turn}"
    else
      @message = "#{@player2.name} wins! \n #{@player2_turn} beats #{@player1_turn}"
    end
  end

  def set_table_position
    if @player1.wins > @player2.wins
      @who_is_winning = @player1
    elsif @player2.wins > @player1.wins
      @who_is_winning = @player2
    end
    set_loser
  end
  def set_loser
    @who_is_losing = ([@player1, @player2] - [@who_is_winning] ).first
  end

end