require_relative 'computer.rb'
require_relative 'player.rb'

class Game

  include Computer

  attr_reader :opponent

  def initialize
    @rock_hash = { rock: "Draw, Computer chose rock too!",
                   paper: "Computer wins! It chose paper!",
                   scissors: "You win! Computer chose scissors!"
                 }
    @paper_hash = { rock: "You win! Computer chose rock!",
                    paper: "Draw, Computer chose paper too!",
                    scissors: "Computer wins! It chose scissors!"
                  }
    @scissors_hash = { rock: "Computer wins! It chose rock!",
                       paper: "You win! Computer chose paper!",
                       scissors: "Draw, Computer chose scissors too!"
                     }
  end

  def result(player)
    @opponent = comp_move
    if player.move.include?("rock")
      player.move.clear
      @rock_hash[@opponent]
    elsif player.move.include?("paper")
      player.move.clear
      @paper_hash[@opponent]
    else
      player.move.clear
      @scissors_hash[@opponent]
    end
  end

end
