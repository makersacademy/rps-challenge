
class Computer

  def choice
    @choice = Game::CHOICE.sample
  end

  def current_choice
    @choice
  end

end
