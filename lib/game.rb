require './app'

class Game

attr_reader :name, :choice, :computer_choice

  def initialize(options)
    @name = options['name']
    @choice = options['choice']
    @computer_choice = options['computer_choice']
  end
end
