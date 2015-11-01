class Game

  attr_reader :player_name, :player_choice, :game_choice

  def initialize(player_name)
    @player_name = player_name
    @possibilities = [:rock,:paper,:scissors]
    @player_choice = nil
    @game_choice = nil
  end

  def set_player_choice(choice)
    @player_choice = choice
  end

  def set_game_choice
    @game_choice = @possibilities[random_number]
  end

  def who_wins
    return 'no one! It\'s a draw' if player_choice == game_choice
    if player_choice == :scissors || game_choice == :scissors
      return game_choice == :rock ? 'Computer' : player_name
    else
      return player_choice[0] > game_choice[0] ? 'Computer' : player_name
    end
  end

  def reset
    @player_choice = nil
    @game_choice = nil
  end

  private

  def random_number
    rand(2)
  end
end
