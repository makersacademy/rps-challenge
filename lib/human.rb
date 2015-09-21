require_relative 'player'

class Human < Player

  def choose_option(option)
    fail 'That is not a valid option' unless options.include? option
    @choice = option
  end

end