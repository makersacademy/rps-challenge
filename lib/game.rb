require './app'

class Game

  attr_reader :name, :choice, :computer_choice

  def initialize(options)
    @name = options['name']
    @choice = options['choice']
    @computer_choice = options['computer_choice']
  end

  def win?
    result == :win
    # if @choice == 'rock'
    #     @computer_choice == 'scissors' ? true : false
    # elsif @choice == 'paper'
    #     @computer_choice == 'rock' ? true : false
    # elsif @choice == 'scissors'
    #     @computer_choice ==  'paper' ? true : false
    # end
  end

  def result
    return if @computer_choice.nil?
    RPS[@choice][@computer_choice]
  end

  RPS = {
    rock: { rock: :draw, paper: :lose, scissors: :win },
    paper: { rock: :win, paper: :draw, scissors: :lose },
    scissors: { rock: :lose, paper: :win, scissors: :draw }
  }
end
