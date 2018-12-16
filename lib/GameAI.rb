class GameAI

  attr_reader :weapon

  def choice
    @weapon = ['rock', 'paper', 'scissors'].sample
  end

end
