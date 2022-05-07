class Game

  def computer_picked
    OPTIONS.sample
  end

  private

  OPTIONS = ['rock', 'paper', 'scissors']

end