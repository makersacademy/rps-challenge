class Winner

  attr_reader :player, :user_chooses, :computer_chooses

  def initialize(player, user_chooses, computer_chooses)
    @player = player
    @user_chooses = user_chooses
    @computer_chooses = computer_chooses
  end

  def who_wins
    game = { "ROCK!" => "SCISSORS!", "PAPER!" => "ROCK!", "SCISSORS!" => "PAPER!" }
      if game[@user_chooses] == @computer_chooses
        return "#{@player} WON!!!"
      elsif game[@computer_chooses] == @user_chooses
        return "I WON!!!"
      else
        @user_chooses == @computer_chooses
        return "IT\'S A TIE!"
      end
  end
end
