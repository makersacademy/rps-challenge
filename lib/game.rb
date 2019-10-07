class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2, config)
    @player_1 = player_1
    @player_2 = player_2
    @config = config
  end

  def self.create(player_1, player_2, config)
    @game = Game.new(player_1, player_2, config)
  end

  def self.instance
    @game
  end

  def result(choice_1, choice_2)
    if wins.include?([choice_1, choice_2])
      :wins
    elsif choice_1 == choice_2
      :draws
    else
      :loses
    end
  end

private
  def wins
    @config.wins
  end

end
