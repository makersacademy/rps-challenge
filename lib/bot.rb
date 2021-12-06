class Bot
  attr_reader :points

  def initialize
    @points = 0
  end

  def add_point
    @points += 1 if @points < 10
  end

  def random_choice
    Player::RPS.sample
  end
end
