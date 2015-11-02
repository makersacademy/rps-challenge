class Game

  attr_reader :player_name, :player_choice, :game_choice

  WEAPONS = {rock: :scissors, scissors: :paper, paper: :rock}

  def initialize(player_name)
    @player_name = player_name
    @player_choice = nil
    @game_choice = nil
  end

  def select_player_choice(choice)
    @player_choice = choice
  end

  def select_game_choice
    @game_choice = WEAPONS.keys[random_number]
  end

  def who_wins
    {draw: 'No one! It\'s a draw', player_win: player_name,
    game_win: 'Computer'}[win_logic]
  end

  private

  def random_number
    rand(3)
  end

  def win_logic
    raise 'Please select weapons' if player_choice == nil || game_choice == nil
    return :draw if player_choice == game_choice
    WEAPONS[player_choice] == game_choice ? :player_win : :game_win
  end

end
