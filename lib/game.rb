class Game

  attr_reader :player, :opponent

  CHOICES = %w(Rock Paper Scissors).freeze

  def self.create(player, ai_class=Player)
    @game = Game.new(player, ai_class.new)
  end

  def self.instance
    @game
  end

  def initialize(player, opponent)
    @player = {player: player, name: player.name, choice: player.choice}
    @opponent = {opponent: opponent, name: opponent.name, choice: opponent.choice}
  end

  def battle
    if CHOICES.index(@player[:choice]) == CHOICES.index(@opponent[:choice])
      "#{@player[:name]}'s #{@player[:choice]} matches #{@opponent[:name]}'s #{@opponent[:choice]} - draw!"
    elsif (CHOICES.index(@player[:choice]) - CHOICES.index(@opponent[:choice])) % 3 == 1
      "#{@player[:name]}'s #{@player[:choice]} beats #{@opponent[:name]}'s #{@opponent[:choice]} - #{@player[:name]} wins!"
    else
      "#{@opponent[:name]}'s #{@opponent[:choice]} beats #{@player[:name]}'s #{@player[:choice]} - #{@opponent[:name]} wins!"
    end
  end

end
