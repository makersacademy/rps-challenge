require_relative 'rps_images'
require_relative 'player'

class Game

  include RPSImages

  attr_reader :current_player, :choice, :opponent_choice, :rounds, :win_count, :draw_count, :lose_count

  WIN = [['rock', 'scissors'], ['paper', 'rock'], ['scissors', 'paper']]

  def initialize(player_name, player_class = Player)
    @player1 = player_class.new(player_name)
    @current_player = @player1
    set_up_game
  end

  def self.create(name)
    @game = Game.new(name)
  end

  def self.instance
    @game
  end

  def set_up_game
    @win_count = 0
    @draw_count = 0
    @lose_count = 0
    @rounds = 0
  end

  def choose(player_choice, opponent_choice = nil)
    @current_player.choose_weapon(player_choice)
    @choice = player_choice
    @opponent_choice = opponent_choice ||= Player::random_weapon
    win? ? (@win_count += 1) : draw? ? (@draw_count += 1) : (@lose_count += 1)
    @rounds += 1
  end

  def result
    draw? ? :draw : win? ? :win : :lose
  end

  private

  def draw?
    @choice == @opponent_choice
  end

  def win?
    WIN.include? [@choice, @opponent_choice]
  end

end
