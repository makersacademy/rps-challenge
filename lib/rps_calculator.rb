

class RpsCalculator

  attr_reader :choice, :name, :rival

  def initialize(choice, name = "Gladiator")
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
        "Well done, #{name_gladiator}. You won!"
      elsif result == 'draw'
        "The game is a tie!"
      else
        "Unlucky, #{name_gladiator}. Unfortunately for you, #{opponent} never fails!"
      end
    end

    private

    def result
      @rules["#{@choice.downcase}/#{opponent}"]
    end

    def opponent
      @rival = ['paper', 'rock', 'scissors'].sample
    end

    def name_gladiator
      if @name.empty?
        "Gladiator"
      else
        @name
      end
    end

end
#
# charlie = RpsCalculator.new('Paper', 'Chalie')
# p charlie.name_gladiator
#
# nothing = RpsCalculator.new('Rock', '')
# p nothing.name_gladiator
