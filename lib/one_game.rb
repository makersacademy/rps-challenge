require_relative 'one_player'
require_relative 'two_player'

class One_game
  attr_reader :one_player, :two_player,  :options
  attr_accessor :computer_choice

  def initialize(choice_one)
    @one_player = One_player.new(choice_one)
    @options = ['rock', 'paper', 'scissors']
  end

end
