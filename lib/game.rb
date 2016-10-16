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

  # def win?
  #   [['p','r'],['s','p'],['r','s']].include? @selections
  # end
  #
  # def tie?
  #   [['r','r'],['p','p'],['s','s']].include? @selections
  # end

  def result
    if win?
      p "#{@player_1.name} wins!"
    elsif tie?
      p 'It\'s a tie!'
    else
      p 'You lose!'
    end
  end

  private

  def generate_name
    ['Yoshimitsu','Frieza','Cersei','Robotnik','Farage'].sample
  end

  def computer_select
    ['r','p','s'].sample
  end

  def win?
    [['p','r'],['s','p'],['r','s']].include? @selections
  end

  def tie?
    [['r','r'],['p','p'],['s','s']].include? @selections
  end
end
