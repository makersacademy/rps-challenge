class GameLog

  attr_reader :scorecard, :current_game, :player_1, :player_2

  def self.create(player_1, player_2, rps_game)
    @game = GameLog.new(player_1,player_2,rps_game)
  end

  def self.instance
    @game
  end

  def initialize(player_1,player_2,rps_game)
    @player_1 = player_1
    @player_2 = player_2
    @current_game = rps_game

    @scorecard=Hash.new(0)
    @scorecard[player_1_name]=0
    @scorecard[player_2_name]=0
  end

  def play_game(player_1_choice,player_2_choice)
    update_current_game(player_1_choice.downcase,player_2_choice.downcase)
    update_scorecard(current_outcome)
  end

  def current_outcome
    current_game.outcome
  end

  def update_scorecard(result)
    case result
    when "player_1" then scorecard[player_1_name]+=1
    when "player_2" then scorecard[player_2_name]+=1
    when "draw" then return
    end
  end

  def winner
    case current_outcome
    when "player_1" then player_1_name
    when "player_2" then player_2_name
    when "draw"     then "draw"
    end
  end

  def player_1_name
    player_1.name
  end

  def player_2_name
    player_2.name
  end

  def update_current_game(player_1_choice,player_2_choice)
    current_game.update_player_2_choice(player_2_choice)
    current_game.update_player_1_choice(player_1_choice)
  end

end
