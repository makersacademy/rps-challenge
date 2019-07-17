require_relative 'player'

class RpsCalculator

  attr_reader :choice, :name, :rival

  OPTIONS = ['paper', 'rock', 'scissors']

  def initialize(choice, player_one)
    @choice = choice
    @player_one = player_one
    @rival
    @rules = {
      'rock/paper' => 'paper',
      'rock/scissors' => 'rock',
      'paper/scissors' => 'scissors',
      'paper/rock' => 'paper',
      'scissors/paper' => 'scissors',
      'scissors/rock' => 'rock',
      'scissors/scissors' => 'draw',
      'rock/rock' => 'draw',
      'paper/paper' => 'draw'
      }
    end

    def message
      if result == @choice.downcase
        "Well done, #{@player_one.no_name}. You won!"
      elsif result == 'draw'
        "The game is a tie!"
      else
        "Unlucky, #{@player_one.no_name}. Unfortunately for you, #{opponent} never fails!"
      end
    end

    private

    def result
      @rules["#{@choice.downcase}/#{opponent}"]
    end

    def opponent
      @rival = OPTIONS.sample
    end

end
