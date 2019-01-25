class Game

  attr_reader :player_name, :player_choice

  def initialize(player_name)
    @player_name = player_name
  end

  def self.create(player_name)
    @games = Game.new(player_name)
  end

  def self.instances
    @games
  end

  def make_choice(choice)
    @player_choice = choice
  end

  def result
    if @player_choice == 'Rock'
      'Loose'
    elsif @player_choice == 'Paper'
      'Draw'
    else
      'Win'
    end
  end
end
