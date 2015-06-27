module PlayerCreator

  def self.create number_of_players, player_class
    number_of_players.times {player_class.new}
  end

end