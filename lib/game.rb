class Game

  attr_reader :player_score, :ash_score

  def initialize
    @player_score = 0
    @ash_score = 0
  end

  def self.create
    @game = Game.new
  end

  def self.read
    @game
  end


  def run
    if @player.pokemon == @ash.pokemon
      puts "It's a draw"
    elsif @player.pokemon == "CHARMANDER" && @ash.pokemon == "SQUIRTLE"
      @ash_score += 1
      puts "Ash wins this round!"
    elsif @player.pokemon == "CHARMANDER" && @ash.pokemon == "BULBASAUR"
      @player_score += 1
      puts "You win this round!"
    elsif @player.pokemon == "SQUIRTLE" && @ash.pokemon == "CHARMANDER"
      @player_score += 1
      puts "You win this round!"
    elsif @player.pokemon == "SQUIRTLE" && @ash.pokemon == "BULBASAUR"
      @ash_score += 1
      puts "Ash wins this round!"
    elsif @player.pokemon == "BULBASAUR" && @ash.pokemon == "SQUIRTLE"
      @player_score += 1
      puts "You win this round!"
    elsif @player.pokemon == "BULBASAUR" && @ash.pokemon == "CHARMANDER"
      @ash_score += 1
      puts "Ash wins this round!"

    end
  end

end
