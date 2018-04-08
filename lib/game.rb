class Game

  attr_reader :player1

  def initialize(player1)
    @player1 = player1
    @computer_pick = ['Rock', 'Paper', 'Scissors']
  end

  def self.create(player1)
    @game = Game.new(player1)
  end

  def self.instance
    @game
  end

  def player_move(choice)
    @choice = choice
   end

  def computer_choice
    @computer_draw = @computer_pick.sample
  end

  def result
    if @choice == @computer_draw
      "It's a Draw!"
     elsif @computer_draw == "Rock"
       if @choice == "Paper"
         "You Win!"
        else
          "You Lose"
        end
     elsif @computer_draw == "Paper"
       if @choice == "Rock"
         "You Lose!"
        else
          "You Win!"
        end
     else
       if @choice == "Paper"
         "You lose"
        else
          "You Win!"
        end
     end
end

end
