# frozen_string_literal: true

# Each game session is an instance of the Play class.
class Play

  attr_reader :mode, :player_1, :player_2

  def initialize(mode, player_1, player_2)
    @mode = mode
    @player_1 = player_1
    @player_2 = player_2
    set_play_mode
  end

  def set_play_mode
    if @player_2.name.empty?
      @mode = @mode += "_solo"
    else
      @mode = @mode += "_duo"
    end
  end

end
