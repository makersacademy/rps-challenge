class Game
  attr_reader :player_1, :current_player

  def initialize(player_1)
    @player_1 = player_1
    @to_win_logic = {"Rock"=>"Scissors",
                  "Paper"=>"Rock",
                  "Scissors"=>"Paper"}
  end

  def fight(choice_by_the_player)
    choice_by_the_pc = rand_pick
    check_winner(choice_by_the_player, choice_by_the_pc)
  end

  def check_winner(choice_by_the_player, choice_by_the_pc)
    return "You win" if @to_win_logic[choice_by_the_player] == choice_by_the_pc
    return "You lose" if @to_win_logic[choice_by_the_pc] == choice_by_the_player
    "Tie"
  end

  def rand_pick
    ["Rock", "Paper", "Scissors"].sample
  end

end
