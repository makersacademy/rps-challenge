class RPS


  CHOICE=['rock','paper','scissors']
  attr_reader :result

def initialize
    @result = nil
end

 def self.create(player_1)
    @game = RPS.new(player_1)
  end

  def self.game_in_play
    @game
  end

  def rock(choice)
    @result = true if choice == "scissors"
    @result = false if choice == "paper"
    @result if choice == "rock"
  end
  def paper(choice)
    @result = true if choice == "rock"
    @result = false if choice == "scissors"
    @result if choice == "paper"
  end

  def scissors(choice)
    @result = true if choice == "paper"
    @result = false if choice == "rock"
    @result if choice == "scissors"
  end

  def rand_gen
    rand(1..3)
  end
  def computer_choice
    # @choice = rand_gen
    # "rock" if @choice ==1
    # "paper" if @choice ==2
    # "scissors" if @choice ==3
    CHOICE.shuffle.first

  end
end
