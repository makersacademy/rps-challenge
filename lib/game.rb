class Game

require_relative '../app.rb'

  def game(move, compmove)

    if @move == "Rock" && @compmove == "Paper"
         p 'Paper covers rock you loose'
       elsif @move == "Paper" && @compmove == "Rock"
           p 'Paper covers rock you win'
        elsif @move == "Rock" && @compmove == "Scissors"
            p 'Rock smashes scissors you win'
          elsif @move == "Scissors" && @compmove == "Rock"
              p 'Rock smashes scissors you loose'
            elsif @move == "Scissors" && @compmove == "Paper"
                p 'Scissors cut paper you win'
              elsif @move == "Paper" && @compmove == "Scissors"
                  p 'Scissors cut paper you loose'
                else  @move == @compmove
                     p 'You tied with the computer'
    end
  end
end
