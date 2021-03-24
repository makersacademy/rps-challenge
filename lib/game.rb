require './lib/player'
require './lib/computer'

class Game 
  ULTRA_WEAPONS_LIST = ["Rock", "Paper", "Fire", "Air", "Scissors", "Water", 
                        "Snake", "Dragon", "Human", "Devil", "Tree", "Lightning", 
                        "Wolf", "Gun", "Sponge"]

  def self.new_game(player1_name, player2_name, weapons)
    @game = Game.new(player1_name, player2_name, weapons)
  end

  def self.current_game
    @game
  end

  attr_reader :player1, :player2, :weapons, :current_player, :ultra_weapons_list

  def initialize(player1_name, player2_name, weapons)
    @player1 = Player.new(player1_name)
    if player2_name == ""
      @player2 = Computer.new("Computer")
    else
      @player2 = Player.new(player2_name)
    end
    @weapons = weapons.to_i
    @current_player = @player1
    @ultra_weapons_list = ULTRA_WEAPONS_LIST
  end

  def get_move(move)
    @current_player.next_move(move.to_i)
    if vs_computer?
      player2.next_move
    else
      whos_turn
    end
  end

  def winner
    if @player1.score == @weapons
      @player1
    elsif @player2.score == @weapons
      @player2
    end
  end

  def gameover?
    @player1.score == @weapons || @player2.score == @weapons
  end

  def get_weapon(index)
    weapon_list = ["Rock", "Paper", "Scissors", "Spock", "Lizard"]
    weapon_list[index - 1]
  end

  def get_ultra_weapon(index)
    @ultra_weapons_list[index - 1]
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
    if odds? || evens?
      moves_min 
    else
      moves_max
    end
  end

  def evens?
    player1.move.even? && player2.move.even?
  end

  def odds?
    player2.move.odd? && player1.move.odd?
  end

  def moves_min
    [player1.move, player2.move].min == player1.move ? @player1 : @player2
  end

  def moves_max
    [player1.move, player2.move].max == player1.move ? @player1 : @player2
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
