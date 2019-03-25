class Computer

  attr_reader :weapon

  def random_choice
    @weapon = Game::OPTIONS.sample
  end

end
