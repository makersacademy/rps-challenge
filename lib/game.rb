require_relative 'player'

class Game

  attr_reader :player_1, :player_2, :current_player, :opponent, :rounds

  WIN = [['rock', 'scissors'], ['paper', 'rock'], ['scissors', 'paper']]

  def initialize(player_1_name, player_2_name = "Computer", player_class = Player)
    @player_1 = player_class.new(player_1_name)
    @player_2 = player_class.new(player_2_name)
    @current_player = @player_1
    @opponent = @player_2
    @rounds = 0
  end

  def self.create(player_1_name, player_2_name = "Computer", player_class = Player)
    @game = Game.new(player_1_name, player_2_name, player_class)
  end

  def self.instance
    @game
  end

  def choose(player_choice, opponent_choice = nil)
    @current_player.choose_weapon(player_choice)
    @opponent.choose_weapon(opponent_choice)
    win_lose_draw
    @rounds += 1
  end

  def result
    draw? ? :draw : win? ? :win : :lose
  end

  private

  def win_lose_draw
    win? ? (@current_player.win; @opponent.lose) :
    draw? ? (@current_player.draw; @opponent.draw) :
    (@current_player.lose; @opponent.win)
  end

  def draw?
    @current_player.weapon == @opponent.weapon
  end

  def win?
    WIN.include? [@current_player.weapon, @opponent.weapon]
  end

end
