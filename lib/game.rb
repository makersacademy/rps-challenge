require_relative 'player'

class Game
  attr_reader :first_player, :second_player, :winner, :looser, :status, :switcher, :player_turn

  def initialize(first_player = Player.new(name), second_player = Player.new(name))
    @first_player = first_player
    @second_player = second_player
    @players = [first_player, second_player]
    @status = "ongoing"
    @switcher = 1
  end

  def self.create(first_player, second_player)
    @game = self.new(first_player, second_player)
  end

  def self.instance
    @game
  end

  def get_winner(winner)
    @winner = winner
  end

  def get_player_to_play
    @player_turn = @players[@switcher]
    switch_turns
  end

  def get_looser
    looser_index = @players.index(@winner)-1
    @looser = @players[looser_index]
  end

  def reduce_hp_from_looser
    get_looser
    @looser.deduct_hp
    @status = "concluded" if @looser.hit_points == 0
  end

  def checks_winner
    results = [@first_player.chosen_outcome, @second_player.chosen_outcome]
    if (results & ["SCISSORS", "PAPER"]).count == 2
      results.index("SCISSORS") == 0 ? get_winner(@first_player) : get_winner(@second_player)
    elsif (results & ["SCISSORS", "LIZZARD"]).count == 2
      results.index("SCISSORS") == 0 ? get_winner(@first_player) : get_winner(@second_player)
    elsif (results & ["ROCK", "SCISSORS"]).count == 2
      results.index("ROCK") == 0 ? get_winner(@first_player) : get_winner(@second_player)
    elsif (results & ["ROCK", "LIZZARD"]).count == 2
      results.index("ROCK") == 0 ? get_winner(@first_player) : get_winner(@second_player)
    elsif (results & ["PAPER", "ROCK"]).count == 2
      results.index("PAPER") == 0 ? get_winner(@first_player) : get_winner(@second_player)
    elsif (results & ["PAPER", "SPOCK"]).count == 2
      results.index("PAPER") == 0 ? get_winner(@first_player) : get_winner(@second_player)
    elsif (results & ["LIZZARD", "PAPER"]).count == 2
      results.index("LIZZARD") == 0 ? get_winner(@first_player) : get_winner(@second_player)
    elsif (results & ["LIZZARD", "SPOCK"]).count == 2
      results.index("LIZZARD") == 0 ? get_winner(@first_player) : get_winner(@second_player)
    elsif (results & ["SPOCK", "SCISSORS"]).count == 2
      results.index("SPOCK") == 0 ? get_winner(@first_player) : get_winner(@second_player)
    elsif (results & ["SPOCK", "ROCK"]).count == 2
      results.index("SPOCK") == 0 ? get_winner(@first_player) : get_winner(@second_player)
    else
      nil
    end
  end

  def switch_turns
    if @switcher == 0
      @switcher = 1
    else
      @switcher = 0
    end
  end
end
