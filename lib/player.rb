class Player

  attr_reader :options, :player_weapon

  def initialize
    @options = [:rock, :paper, :scissors]
    @player_weapon = ''
  end

  def choose_weapon(choice)
    if options.include? choice.to_sym
      @player_weapon = choice
    else
      "Please enter either rock, paper or scissors"
    end
  end


end