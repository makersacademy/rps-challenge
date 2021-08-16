module Game
  @@move = {
    rock: { beats: { scissors: true, paper: false } },
    paper: { beats: { rock: true, scissors: false } },
    scissors: { beats: { paper: true, rock: false } }
  }

  def random_move
    @@move.keys.sample.to_s
  end

  def judge(move1, move2)
    move1, move2 = move1.to_sym, move2.to_sym

    return case
           when @@move[move1][:beats][move2]; -1
           when @@move[move2][:beats][move1]; 1
           else 0
           end
  end
end
