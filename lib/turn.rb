class Turn

  attr_reader :player, :player_option, :computer_option

  def initialize(options)
    @player = options[:player]
    @player_option = options[:player_option]
    @computer_option = options[:computer_option]
  end
end
