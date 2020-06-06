# frozen_string_literal: true

require './lib/player.rb'

class Game
  attr_reader :result, :player
  def initialize(player)
    @player = player
    @result = nil
  end

  def get_result
    get_cp_move
    if @player.move == @cp_move
      @result = 'Draw'

    elsif (@player.move == 'Rock') && (@cp_move == 'Scissors')
      @result = "#{player.name} Won"

    elsif (@cp_move == 'Rock') && (@player.move == 'Scissors')
      @result = 'Computer Won'

    elsif (@player.move == 'Scissors') && (@cp_move == 'Paper')
      @result = "#{player.name} Won"

    elsif (@cp_move == 'Scissors') && (@player.move == 'Paper')
      @result = 'Computer Won'

    elsif (@player.move == 'Rock') && (@cp_move == 'Paper')
      @result = 'Computer Won'

    elsif (@cp_move == 'Rock') && (@player.move == 'Paper')
      @result = "#{player.name} Won"
    end
  end

  private

  def get_cp_move
    @cp_move = %w[Rock Paper Scissors].sample
  end
end
