require_relative 'player'

module PlayerCreator

  def self.create(number_of_players, player_class,
                  comparator, random_move_creator)

    players = Array.new
    number_of_players.times do players << player_class.new comparator,
                                                            random_move_creator
    end
    players
  end

end