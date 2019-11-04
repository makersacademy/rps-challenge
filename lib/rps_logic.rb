require_relative '../app.rb'
class RPSLogic

  def check(a_player, b_player)
    return 0 if a_player == b_player # draw

    rules = { Rock: :Scissors,
              Paper: :Rock,
              Scissors: :Paper }

    return 1 if rules.fetch(a_player.to_sym).to_s == b_player # player 1 wins

    return 2 # player 2 wins
  end

end
