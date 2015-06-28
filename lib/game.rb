class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)

    @game_type = { rock:     [:lizard, :scissors],
                   paper:    [:rock, :spock],
                   scissors: [:paper, :lizard],
                   spock:    [:scissors, :rock],
                   lizard:   [:spock, :paper] }

    @player_1 = player_1
    @player_2 = player_2
    @games_played = 0
  end

  def play

    @games_played += 1

     if winner? == 'Draw'
      @player_1.draws += 1
      @player_2.draws += 1
      return "Draw! You have both selected #{@player_1.current_selection.to_s}."
    end

    if winner? == 'Player 1'
      @player_1.wins += 1
      @player_2.losses += 1
      return "#{@player_1.name} wins! #{@player_1.current_selection.to_s.capitalize} beats #{@player_2.current_selection.to_s}."
    end

    @player_2.wins += 1
    @player_1.losses += 1
    return "#{@player_2.name} wins! #{@player_2.current_selection.to_s.capitalize} beats #{@player_1.current_selection.to_s}."
  end

  private

   def winner? 

    return 'Draw' if @player_1.current_selection == @player_2.current_selection
    return 'Player 1'  if @game_type[@player_1.current_selection].include?(@player_2.current_selection)
    'Player 2'
  end
end


