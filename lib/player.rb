class Player
  attr_reader :name, :choice

  def initialize(name, choice)
    @name = name
    @choice = choice
  end

  def random_choice
   ["Rock", "Paper", "Scissors"].sample
 end

 def play
   @computer_move = random_choice
   return "A stalemate!" if choice == @computer_move
   return "A glorious victory!" if choice == "Rock" && @computer_move == "Scissors"
   return "A glorious victory!" if choice == "Paper" && @computer_move == "Rock"
   return "A glorious victory!" if choice == "Scissors" && @computer_move == "Paper"
   "You've lost!"
 end
end
