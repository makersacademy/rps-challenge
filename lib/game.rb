
class Game

  attr_reader :name, :player, :opponent

  def initialize(player, opponent=self)
    @player = player
    @opponent = opponent
    @options = ['rock', 'paper', 'scissors']
    @winner = nil
    @name = 'Computer'
  end

  def winner
    @winner
  end

   def play(choice)
    self.compete
    self.rules(choice)
    "#{@player.name} chooses: #{choice}, #{@opponent.name} chooses: #{@opponentoption}"
  end

  def compete(other_choice = nil)
    if other_choice != nil
      @opponentoption = other_choice
    else
      @opponentoption = opponent.generate
    end
  end

  def generate
    @options.sample
   end

  def rules(choice)
    if choice == 'rock' && @opponentoption == 'scissors'
      @winner = @player.name
    elsif choice == 'paper' && @opponentoption == 'rock'
      @winner = @player.name
    elsif choice == 'scissors' && @opponentoption == 'paper'
      @winner = @player.name
    elsif choice == @opponentoption
      @winner = nil
    else
      @winner = @opponent.name
    end
  end
end