require 'byebug'
require 'player_creator'
require 'player'

class Game

  def initialize( player_creator: PlayerCreator, number_of_players: 2, 
    player_class: Player, comparator; Comparator, random_move_creator: RandomMoveCreator)

    initialize_players player_creator, number_of_players, player_class, comparator, random_move_creator
  end

  def initialize_players player_creator, number_of_players, player_class, comparator, random_move_creator
    @player_1, @player_2 = player_creator.create number_of_players, player_class, comparator, random_move_creator
  end

  private

  attr_reader :player_creator

end


Game::RandomMoveCreator = -> { ::SHAPES.sample }