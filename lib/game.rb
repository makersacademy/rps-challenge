class Game

require_relative '../app.rb'

  def game

    if @move == @compmove
       puts 'You tied with the computer'
     elsif @move == "Rock"
       if @compmove == "Paper"
         puts 'Paper covers rock you loose'
       elsif @move == "Paper"
         if @compmove == "Rock"
           puts 'Paper covers rock you win'
        elsif @move == "Rock"
          if @compmove == "Scissors"
            puts 'Rock smashes Scissors you win'
          elsif @move == "Scissors"
            if @compmove == "Rock"
              puts 'Rock smashes Scissors you loose'
            elsif @move == "Scissors"
              if @compmove == "Paper"
                puts 'Scissors cut Paper you win'
              elsif @move == "Paper"
                if @compmove == "Scissors"
                  puts 'Scissors cut Paper you loose'
                end
              end
            end
          end
        end
      end
    end
  end
end
