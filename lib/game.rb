require 'byebug'
require_relative 'player_creator'
require_relative 'comparator'

class Game

  def initialize(number_of_players: 2, player_creator: PlayerCreator, 
                player_class: Player, comparator: Comparator, 
                random_move_creator: RandomMoveCreator)
    initialize_players(player_creator, 
                       number_of_players, 
                       player_class, 
                       comparator, 
                       random_move_creator)
  end

  def initialize_players(player_creator, number_of_players, 
                        player_class, comparator, random_move_creator)
    @player_1, @player_2 = player_creator.create( number_of_players, player_class, 
                                                  comparator, random_move_creator)
  end

end

Game::RandomMoveCreator = -> {::SHAPES.sample}