require "./lib/choices"

class Player

  attr_reader :name, :points
  attr_accessor :choice

  def initialize(name)
    @name = name
    @points = 0
  end

  def increase_points
    @points += 1
  end

  def self_choice(game_mode)
    game_mode == "spock" ? size = Choices::SPOCK: size =Choices::CLASSIC
    value = Kernel.rand(size)
    @choice = Choices::CHOICES.key(value).to_s
  end
end
