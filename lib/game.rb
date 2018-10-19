require "round"
require "player"

class Game

  def self.instance
    @game
  end

  def self.create()
    @game = Game.new()
    @rounds = Array.new
  end

  def assign_players(players)
    @rounds = Array.new
    if players[0].is_a?(String)
      players.each  {|player|
        @players.push(Player.new(player))
      }
    else @players = players
    end
  end

  def start_round(round = Round.new())
    @round = round
  end

  def player_plays(player,move)
    @round.player_plays(player,move)
  end

  def finish_round
    @round.calc_winner(@players)
    @rounds.push(@round)
    @round.winner
  end

  def finish_game
    winners =[]
    winningscore = @players[0].get_score.to_i
    @players.each { |player|
      winners.push(player) if player.get_score == winningscore
      if player.get_score > winningscore
        winningscore = player.get_score
        winners = []
        winners.push(player)
      end
    }
    raise ("Its a Tie") if winners.length > 1
    winners
  end

 def rounds_played
   @rounds.length
 end

 def players_in_game
   @players.length
 end

end
