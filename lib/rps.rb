class RPS

  def initialize(player_one, player_two)
    @players = [player_one, player_two]
  end

  attr_reader :players

  def self.new_game(player_one, player_two)
    @rps = RPS.new(player_one, player_two)
  end

  def self.current_game
    @rps
  end

  def player_one
    @players[0]
  end

  def player_two
    @players[1]
  end

  # def self.show_winner(player_choice)
  #   this_worked
  # end

end