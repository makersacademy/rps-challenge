class Game

  attr_reader :player_name, :player_instrument, :computer_instrument

  def initialize(variables) #creating a hash and adding key value pairs through instance variables below
    @player_name = variables['player_name']
    @player_instrument = variables['player_instrument']
    @computer_instrument = variables['computer_instrument']
  end

  # def player_wins?
  #   if @instrument==
  # end
end
