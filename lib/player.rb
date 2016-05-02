require "./lib/choices"

class Player

  attr_reader :name
  attr_accessor :choice, :points

  def initialize(name)
    @name = name
  end


  def self_choice(game_mode)
    game_mode == "spock" ? size = Choices::SPOCK: size =Choices::CLASSIC
    value = Kernel.rand(size)
    @choice = Choices::CHOICES.key(value)
  end
end
