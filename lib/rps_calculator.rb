

class RpsCalculator

  attr_reader :choice, :name, :rival

  def initialize(choice, name)
    @choice = choice
    @name = name
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
        "Well done, #{@name}. You won!"
      elsif result == 'draw'
        "The game is a tie!"
      else
        "Unlucky, #{@name}. Unfortunately for you, #{opponent} never fails!"
      end
    end

    private

    def result
      @rules["#{@choice.downcase}/#{opponent}"]
    end

    def opponent
      @rival = ['paper', 'rock', 'scissors'].sample
    end

end
