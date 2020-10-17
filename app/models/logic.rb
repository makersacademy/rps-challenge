class Game
  COMPUTER_NAMES = ["Tanya", "Mike", "Carlos", "Megan", "Beth", "Patricia", "Patrick", "Stewart"]

  def add_names(player_name)
    @player_name = player_name
  end

  def print_players
    "#{player_name} Vs. #{COMPUTER_NAMES.sample}"
  end
end
