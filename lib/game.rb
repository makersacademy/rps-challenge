require_relative 'player'
require_relative 'comp'

class Game
  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def self.instance
    @game
  end

  def initialize(player_name, player_class = Player, comp_class = Comp)
    @player = player_class.new(player_name)
    @comp = comp_class.new
    @winner = nil
  end

  attr_reader :winner, :player, :comp

  def decide_winner
    case @player.choice
    when 'Rock'
      player_chose_rock
    when 'Paper'
      player_chose_paper
    when 'Scissors'
      player_chose_scissors
    end
  end

  private

  def player_chose_rock
    case @comp.choice
    when 'Paper'
      @winner = @comp
    when 'Scissors'
      @winner = @player
    end
  end

  def player_chose_paper
    case @comp.choice
    when 'Scissors'
      @winner = @comp
    when 'Rock'
      @winner = @player
    end
  end

  def player_chose_scissors
    case @comp.choice
    when 'Rock'
      @winner = @comp
    when 'Paper'
      @winner = @player
    end
  end
end
