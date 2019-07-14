require 'game'

class Game
  attr_reader :player, :choice

  CHOICES = ['rock', 'paper', 'scissors']

  def initialize(player)
    @player = player
  end

  def self.new_game(player)
    @game = Game.new(player)
    @choice = nil
  end

  def define_choice(choice)
    @choice = choice
  end

  def bot_choice(bot_choice = Machine.new.bot_choice)
    @bot_choice = bot_choice
  end

  def result
    if @choice == @bot_choice
      :draw
    elsif bot_win?
      :lose
    elsif you_win?
      :win
    else
      raise 'Oops, something went wrong'
    end
  end

  def bot_win?
    @bot_choice == 'rock' && @choice == 'scissors' ||
    @bot_choice == 'scissors' && @choice == 'paper' ||
    @bot_choice == 'paper' && @choice == 'rock'
  end

  def you_win?
    @choice == 'rock' && @bot_choice == 'scissors' ||
    @choice == 'scissors' && @bot_choice == 'paper' ||
    @choice == 'paper' && @bot_choice == 'rock'
  end

end
