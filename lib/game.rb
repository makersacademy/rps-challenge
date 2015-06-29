require 'byebug'
require_relative 'player_creator'
require_relative 'move_holder'
require_relative 'comparator'

class Game

  attr_reader :player_1, :player_2
  
  def initialize(play_mode, player_creator: PlayerCreator, 
                player_class: Player, comparator: Comparator, 
                random_move_creator: RandomMoveCreator,
                move_holder: MoveHolder)

    initialize_move_holder(move_holder, 
                           play_mode, 
                           comparator,
                           random_move_creator)

    initialize_players(player_creator, 
                       play_mode, 
                       player_class) 
  end

  def initialize_players(player_creator, play_mode, 
                        player_class)
    @player_1, @player_2 = player_creator.create(play_mode, player_class, move_holder)
  end

  def initialize_move_holder(move_holder, play_mode, 
                            comparator, random_move_creator)
    @move_holder = move_holder.new(play_mode, comparator, random_move_creator)
  end


  private

  attr_reader :move_holder

end

Game::RandomMoveCreator = -> {::SHAPES.sample}
SHAPES = [:rock, :scissor, :paper]


