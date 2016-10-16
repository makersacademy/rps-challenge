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
    @current_winner = nil
    @overall_winner = nil
  end

  def player_name
    player.name
  end

  def player_choice
    player.weapon_choice
  end

  def trump_choice
    trump.weapon_choice
  end

  def complete_turn
    trump.choose_weapon
    calculate_outcome
    calculate_current_winner
    update_score
    update_list_of_wins
  end

  def trump_response
    trump.brag if trump_wins?
    trump.whinge if player_wins?
    trump.complain_about_draw if draw?
  end

  def over?
    player_score == 3 || trump_score == 3
  end

  def reset

  end

  def announce_winner
    p "Trump wins!" if trump_wins?
    p "You win!" if player_wins?
    p "It's a draw!" if draw?
  end

# private

  def player_wins?
    @current_winner == "#{@player.name}"
  end

  def trump_wins?
    @current_winner == 'Trump'
  end

  def draw?
    @current_winner == :draw
  end


  def calculate_overall_winner
    @overall_winner = "#{@player.name}" if @player_score == 3
    @overall_winner = "Trump" if @trump_Score == 3
  end

  def calculate_current_winner
    @current_winner = "#{@player.name}" if calculate_outcome == 'Wins'
    @current_winner = 'Trump' if calculate_outcome == 'Loses'
    @current_winner = :draw if calculate_outcome == 'Draws'
  end

  def update_score
    @player_score += 1 if player_wins?
    @trump_score += 1 if trump_wins?
  end

  def update_list_of_wins
    @list_of_wins << @current_winner
  end

  def calculate_outcome
    RULES[@player.weapon_choice][@trump.weapon_choice]
  end

  RULES = {
      rock:     { rock: 'Draws', paper: 'Loses', scissors: 'Wins' },
      paper:    { rock: 'Wins', paper: 'Draws', scissors: 'Loses' },
      scissors: { rock: 'Loses', paper: 'Wins', scissors: 'Draws'}
    }


end
