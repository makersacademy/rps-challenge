class Auto
  attr_reader :random

  def random_pick
    @random = ['rock','paper','scissors'].sample
  end
end