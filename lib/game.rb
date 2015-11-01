class Game

  attr_reader :choices, :player_choice, :computer_choice, :player_name

  def initialize
    @choices = [:rock, :paper, :scissors]
  end

  def set_player_name(name)
    @player_name = name
  end

  def set_player_choice(choice)
    @player_choice = choice.to_sym
  end

  def winner
    return nil if @player_choice.nil?
    set_computer_choice
    return 'Nobody' if draw?
    index = @choices.index(@player_choice)
    (@choices[index-1] == @computer_choice) ? @player_name : 'Computer'
  end

  private

  def draw?
    @player_choice == @computer_choice
  end

  def set_computer_choice
    @computer_choice = random_choice
  end

  def random_choice
    rand_num = Kernel.rand
    rand_num < 0.333 ? :rock : ( rand_num < 0.666 ? :paper : :scissors )
  end

end
