class Sp_game

  attr_reader :player_1

  def self.start_an_sp_game(player_name)
    @current_sp_game = Sp_game.new(player_name)
  end

  def self.current_sp_game
    @current_sp_game
  end

  def initialize(player_name)
    @player_1 = Player.new(player_name)
  end

end