class Game

  attr_reader :choices, :player_choice, :computer_choice, :player_name

  def initialize
    @choices = [:rock, :paper, :scissors]
  end

  def set_player_name(name)
    @player_name = name
  end

  def set_player_choice(choice)
    @player_choice = choice
  end

  def winner
    return nil if @player_choice.nil?
    set_computer_choice
    index = @choices.index(@player_choice.to_sym)
    (@choices[index-1] == @computer_choice) ? @player_name : 'Computer'
  end

  private

  def set_computer_choice
    @computer_choice = random_choice
  end

  def random_choice
    rand_num = Kernel.rand
    rand_num < 0.333 ? :rock : ( rand_num < 0.666 ? :paper : :scissors )
  end

end
