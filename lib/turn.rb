
class Turn
  attr_reader :player_name, :player_option, :opponent_option

  def initialize(options)
    @player_name = options[:player_name]
    @player_option = options[:player_option]
    @opponent_option = options[:opponent_option]
  end
end
