
class Game

  def initialize
    @choices = ['Rock', 'Paper', 'Scissors']
  end

  def computer_choice
    @choices[rand(2)]
  end

  # def self.create_game(player)
  #   @game = Game.new(player)
  # end
  #
  # def self.get_game
  #   @game
  # end

end
