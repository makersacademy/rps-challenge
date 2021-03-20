require './lib/player'
require './lib/computer'

class Game 

  def self.new_game(player1_name, player2_name, weapons)
    @game = Game.new(player1_name, player2_name, weapons)
  end

  def self.current_game
    @game
  end

  attr_reader :player1, :player2, :weapons, :current_player

  def initialize(player1_name, player2_name, weapons)
    @player1 = Player.new(player1_name)
    if player2_name == ""
      @player2 = Computer.new("Computer")
    else
      @player2 = Player.new(player2_name)
    end
    @weapons = weapons.to_i
    @current_player = @player1
  end

  def get_move(move)
    @current_player.next_move(move.to_i)
    if vs_computer?
      player2.next_move
    else
      whos_turn
    end
  end

  def get_weapon(index)
    weapon_list = ["Rock", "Paper", "Scissors", "Spock", "Lizard"]
    weapon_list[index - 1]
  end

  def vs_computer? 
    @player2.is_a? Computer
  end

  def match
    if draw?
      result = "It's a Draw!"
    else
      settle.wins
      result = "#{settle.name} wins!"
    end
    return result
  end

  private

  def settle
    if odds_or_evens?
      [player1.move, player2.move].min == player1.move ? @player1 : @player2
    else
      [player1.move, player2.move].max == player1.move ? @player1 : @player2
    end
  end

  def odds_or_evens?
    player2.move.odd? && player1.move.odd? || player1.move.even? && player2.move.even?
  end

  def draw?
    player1.move == player2.move
  end

  def whos_turn
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end
end
