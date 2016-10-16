require_relative 'player'

class Game

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  attr_reader :player_1, :player_2

  def initialize(player_1)
    @player_1 = player_1
    @player_2 = Player.new(generate_name)
    @selections = []
  end

  def player_select(selection)
    @selections << selection
  end

  def add_computer_selection
    @selections << computer_select
  end

  def choices
    @selections.dup
  end

  def result
    if win?
      p "#{@player_1.name} wins!"
    elsif tie?
      p "It's a tie!"
    else
      p "You lose!"
    end
  end

  def replay
    @selections.clear
  end

  private

  def generate_name
    ['Yoshimitsu','Frieza','Cersei','Robotnik','Farage'].sample
  end

  def computer_select
    ['Rock','Paper','Scissors'].sample
  end

  def win?
    [['Paper','Rock'],['Scissors','Paper'],['Rock','Scissors']].include? choices
  end

  def tie?
    [['Rock','Rock'],['Paper','Paper'],['Scissors','Scissors']].include? choices
  end
end
