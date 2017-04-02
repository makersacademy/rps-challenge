class GameLog

  attr_reader :scorecard

  def initialize(player_1,player_2,rps_game)
    @player_1 = player_1
    @player_2 = player_2
    @current_game = rps_game

    @scorecard=Hash.new(0)
    @scorecard[player_1.name]=0
    @scorecard[player_2.name]=0
  end

  def play_game(player_1_choice,player_2_choice)
    update_current_game(player_1_choice,player_2_choice)
    update_scorecard(current_game.outcome)

  end

  def update_scorecard(result)
    case result
    when "player_1" then scorecard[player_1.name]+=1
    when "player_2" then scorecard[player_2.name]+=1
    when "draw" then return
    else return
    end
  end

  def update_current_game(player_1_choice,player_2_choice)
    current_game.update_player_2_choice(player_2_choice)
    current_game.update_player_1_choice(player_1_choice)
  end
private


attr_reader :current_game, :player_1, :player_2


end
