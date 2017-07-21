require_relative 'rps_images'

class Game

  include RPSImages

  attr_reader :name, :choice, :opponent_choice, :rounds, :win_count, :draw_count, :lose_count

  CHOICES = ['rock', 'paper', 'scissors']
  WIN = [ ['rock','scissors'], ['paper','rock'], ['scissors','paper'] ]

  def initialize (name)
    @name = name
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

  def image(rps)
    get_image(rps)
  end

  def outcome
    @history.last
  end

  def choose(player_choice, opponent_choice = nil)
    @choice = player_choice
    @opponent_choice = opponent_choice ||= random_choice
    win? ? (@win_count += 1) : draw? ? (@draw_count += 1) : (@lose_count += 1)
    @rounds += 1
  end

  def result
    draw? ? :draw : win? ? :win : :lose
  end

  private

  def random_choice
    CHOICES.sample
  end

  def draw?
    @choice == @opponent_choice
  end

  def win?
    WIN.include? [ @choice, @opponent_choice ]
  end

end
