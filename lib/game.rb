require './app'

class Game

  attr_reader :name, :choice, :computer_choice

  def initialize(options)
    @name = options['name']
    @choice = options['choice']
    @computer_choice = options['computer_choice']
  end

  def win?
    if @choice == 'rock'
        @computer_choice == 'scissors' ? true : false
    elsif @choice == 'paper'
        @computer_choice == 'rock' ? true : false
    elsif @choice == 'scissors'
        @computer_choice ==  'paper' ? true : false
    end
  end
end
