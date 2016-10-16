require_relative 'player'
require_relative 'trump'

class Game

attr_reader :list_of_wins, :current_winner, :overall_winner, :player_score, :trump_score, :games_played, :player, :trump

  def self.create(player, trump)
    @game = Game.new(player, trump)
  end

  def self.instance
    @game
  end

  def initialize(player, trump)
    @player = player
    @trump = trump
    @list_of_wins = []
    @player_score = 0
    @trump_score = 0
    @games_played = 0
    @current_winner = nil
    @overall_winner = nil
  end

  def player_name
    @player.name
  end

  def game_over
    !!overall_winner
  end

# private

  def calculate_overall_winner
    @overall_winner = @player if @player_score == 3
    @overall_winner = @trump if @trump_Score == 3
  end

  def calculate_current_winner
    @current_winner = @player if calculate_outcome == 'Wins'
    @current_winner = @trump if calculate_outcome == 'Loses'
    @current_winner = :draw if calculate_outcome == 'Draws'
  end

  def update_score
    @player_score += 1 if current_winner == player
    @trump_score += 1 if current_winner == trump
  end


  def update_list_of_wins
    @list_of_wins << @current_winner
    @games_played += 1
  end

  RULES = {
      rock:     { rock: 'Draws', paper: 'Loses', scissors: 'Wins' },
      paper:    { rock: 'Wins', paper: 'Draws', scissors: 'Loses' },
      scissors: { rock: 'Loses', paper: 'Wins', scissors: 'Draws'}
    }

    def calculate_outcome
      RULES[@player.weapon_choice][@trump.weapon_choice]
    end



end
