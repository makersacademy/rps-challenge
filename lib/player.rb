class Player
  attr_reader :name, :player_move, :player_choice

  def initialize(name)
    @name = name
    @player_choice 
    @ip 
  end

  def player_move(choice)
    @player_choice = choice
  end

  def show
    @player_choice
  end

  def ip(ip)
    @ip = ip
  end
end
