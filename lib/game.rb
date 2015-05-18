class Game
attr_accessor :player_1
attr_accessor :player_2
attr_reader :players

  def initialize player_class, winning_score = 5, multiplayer = false
    @player_1 = player_class.new
    @player_2 = player_class.new
    @winning_score = winning_score
    if multiplayer == true
      @players = 2
    else
      @players = 1
    end
    @plays = [:Rock, :Paper, :Scissors]
    @game_over = false
  end

  def turn_over?
    @player_1.has_played? and @player_2.has_played?
  end

  # Yup yup, this could totally use refactoring, I agree
  def end_turn
    # Figure out who won, add a point accordingly
    if @player_1.played == @player_2.played
      outcome = :draw
    elsif @plays.index(@player_1.played) == ((@plays.index(@player_2.played)) -1) % 3
      @player_1.add_point
      outcome = :player_1
      if @player_1.points >= @winning_score
        @game_over = true
        @player_1.has_won
        @player_2.has_lost
      end
    elsif @plays.index(@player_1.played) == (@plays.index(@player_2.played) - 1) % 3
      @player_2.add_point
      outcome = :player_2
      if @player_2.points >= @winning_score
        @game_over = true
        @player_2.has_won
        @player_1.has_lost
      end
    end
    @player_1.new_turn
    @player_2.new_turn
    return outcome
  end


  def game_over?
    @game_over
  end

end
