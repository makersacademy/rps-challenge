require_relative 'player'

module PlayerCreator

  def self.create(play_mode, player_class,
                  move_holder)
    if(play_mode != :solo)
      @player_1, @player_2 = [player_class.new(move_holder),
                              player_class.new(move_holder)]
    else 
      @player_1 = player_class.new(move_holder)
    end
  end

  attr_reader :player_1, :player_2

end