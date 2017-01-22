class Game

  def initialize(choice)
    @choice = choice
  end

  def decider
    response = ['rock','paper','scissors'].sample
    result = case @choice
      when "rock"
        if response == 'rock'
          then 'tie!'
        elsif response == 'paper'
          then 'you lose!'
        elsif response == 'scissors'
          then 'you win!'
        end
      when "paper"
        if response == 'paper'
          then 'tie!'
        elsif response == 'scissors'
          then 'you lose!'
        elsif response == 'rock'
          then 'you win!'
        end
      when "scissors"
        if response == 'scissors'
          then 'tie!'
        elsif response == 'rock'
          then 'you lose!'
        elsif response == 'paper'
          then 'you win!'
        end
      else
         "you didn't choose wisely!"
      end
      return result
    end

end
