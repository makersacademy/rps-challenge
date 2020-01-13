class Game

require_relative '../app.rb'

  def game(move, compmove)

    if @move == @compmove
       p 'You tied with the computer'
     elsif @move == "Rock" && @compmove == "Paper"
         p 'Paper covers rock you loose'
       elsif @move == "Paper" && @compmove == "Rock"
           p 'Paper covers rock you win'
        elsif @move == "Rock" && @compmove == "Scissors"
            p 'Rock smashes Scissors you win'
          elsif @move == "Scissors" && @compmove == "Rock"
              p 'Rock smashes Scissors you loose'
            elsif @move == "Scissors" && @compmove == "Paper"
                p 'Scissors cut Paper you win'
              else @move == "Paper" && @compmove == "Scissors"
                  p 'Scissors cut Paper you loose'
    end
  end
end
