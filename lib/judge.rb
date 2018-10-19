require "player.rb"
# require "./config/moves.txt"

class Judge
  attr_reader :moves
  def initialize()
    @moves = Array.new(0)
    File.open(File.dirname(__FILE__) + '/moves.txt').each {|line|
      @moves.push({(line.strip).to_sym => 0})
    }
    # p @moves
  end

  # def decide_winner(player1, player2)
  #   (player1.move == "paper" && player2.move == "rock") || (player1.move == "rock" && player2.move == "scissor") || (player1.move == "scissor" && player2.move == "paper") ?
  #     player1 : player2
  # end

  def decide_winner(players)
    winners = []
    players.each {|player|
        @moves.each_with_index {|hash, index|
          if hash.has_key?(player.get_move.to_sym)
            # p player.get_move.to_sym
            (@moves[index])[player.get_move.to_sym] =+1
            break
          end
        }
    }
    # p @moves
    raise "Its a tie" if !(@moves.any? {|h| h.has_value? 0})
    #p "big hash "<< @moves.to_s
    @moves.each_with_index{|hash, index|
      #p "evaluating " <<hash.to_s
      if hash.has_value?(0)
        #p "zero" << hash.to_s
        winning_move = @moves[index - 1].to_a[0][0]
        #p "winner" << winning_move.to_s
        players.each{|player|
          winners.push(player) if player.get_move.to_sym == winning_move
          #p "player" << player.to_s
        }
        return winners
        #p "winners" << winners
      end
    }
  end

end
