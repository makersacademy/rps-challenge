
class Game

  OPTIONS = ['Rock', 'Paper', 'Scissors']

  def initialize
    @options = OPTIONS
  end

  def choice
    @options.sample.capitalize
  end

  def result(choice1, choice2)
   if choice1 == choice2
     "It's a draw!"
   elsif choice1 == "Rock"
     vs_rock(choice2)
   elsif choice1 == "Paper"
     vs_paper(choice2)
   else
     vs_scissors(choice2)
   end
 end

 private

def vs_rock(opponent)
  opponent == "Scissors" ? "Rock wins!" : "Paper wins!"
end

def vs_paper(opponent)
  opponent == "Rock" ? "Paper wins!" : "Scissors wins!"
end

def vs_scissors(opponent)
  opponent == "Paper" ? "Scissors wins!" : "Rock wins!"
end

end
