require "./lib/judge"
require "./lib/player"

class Round

 attr_reader :winners

  def player_plays(player,move)
    player.define_move(move)
  end

  def get_round_winner(players, judge = Judge.new)
    @winners = judge.decide_round_winner(players)
    @winners.each{|winner|
      winner.increase_score
    }
    @winners
  end

end
