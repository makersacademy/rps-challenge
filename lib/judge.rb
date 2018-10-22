require "./lib/player.rb"
# require "./config/moves.txt"

class Judge
  attr_reader :moves
  def initialize()
    @moves = Array.new(0)
    File.open(File.dirname(__FILE__) + '/moves.txt').each {|line|
      @moves.push({(line.strip).to_sym => 0})
    }
  end

  def decide_round_winner(players)
    winners = []
    players.each {|player|
      @moves.each_with_index {|hash, index|
        if hash.has_key?(player.get_move.to_sym)
          (@moves[index])[player.get_move.to_sym] =+1
          break
        end
      }
    }
    raise NoWinnerError.new("No winner for this round")  if !(@moves.any? {|h| h.has_value? 0})
    @moves.each_with_index{|hash, index|
      if hash.has_value?(0)
        winning_move = @moves[index - 1].to_a[0][0]
        players.each{|player|
          winners.push(player) if player.get_move.to_sym == winning_move
        }
        raise NoWinnerError.new("No winner for last round") if (players.length == winners.length) || (winners.length==0)
        return winners
      end
    }
  end

  def decide_game_winner(players)
    winners = []
    winningscore = players[0].get_score.to_i
    players.each { |player|
      winners.push(player) if player.get_score == winningscore
      if player.get_score > winningscore
        winningscore = player.get_score
        winners = []
        winners.push(player)
      end
    }
    raise NoWinnerError.new("No winner for this game") if ((players.length == winners.length) || (winners.length == 0))
    winners
  end

end

class NoWinnerError < StandardError
end
