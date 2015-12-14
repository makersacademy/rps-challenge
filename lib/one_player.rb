class One_player

  attr_reader :choice, :computer_choice

  def initialize(player_one_choice)
    @choice = player_one_choice
    @options = ['rock', 'paper', 'scissors']
    set_computer_choice
  end

  def invalid_choice?
     return true unless @options.include?(choice)
  end

  def set_computer_choice
    num = Kernel.rand(30)
    @computer_choice = @options[0] if num > 0 && num < 10
    @computer_choice = @options[1] if num > 10 && num < 20
    @computer_choice = @options[2] if num > 20 && num < 30
  end

  def win?
    return true if choice == 'rock' && @computer_choice == 'scissors'
    return true if choice == 'paper' && @computer_choice == 'rock'
    return true if choice == 'scissors' && @computer_choice == 'paper'
    return false
  end

  def match?
    computer_choice == choice
  end

end
