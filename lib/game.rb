class Game

  attr_reader :choice, :result, :random
  attr_accessor :rps

  def initialize
    @rps = [:rock, :paper, :scissors]
  end

  def self.create
    @game = Game.new
  end

  def self.instance
    @game
  end

  def option(choice)
    @choice = choice.to_sym
  end

  def win_lose_draw(choice)
    random_ai
    choice_index = rps.index(choice)
    if rps[choice_index - 1] == rps[rand_rps]
      @result = :won
    elsif rps[choice_index + 1] == rps[rand_rps] || (rps[choice_index] != rps[rand_rps] && rps[choice_index + 1] == nil)
      @result = :lost
    elsif rps[choice_index] == rps[rand_rps]
      @result = :drew
    end
  end

private

  attr_reader :rand_rps

  def random_ai
    @random = rps.sample
    @rand_rps = rps.index(random)
  end

end
