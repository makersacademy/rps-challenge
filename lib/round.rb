class Round

 attr_reader :winners

  def player_plays(player,move)
    player.define_move(move)
  end

  def calc_winner(players, judge = Judge.new)
    @winners = judge.decide_winner(players)
    @winners.each{|winner|
      winner.increase_score
    }
    @winners
  end

end
