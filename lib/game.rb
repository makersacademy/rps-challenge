class Game

  RANKING = ['rock', 'paper', 'scissors', 'rock']

  def self.start player
    @player = player
    self.count
  end

  def self.player
    @player
  end

  def self.result
    return "draw" if self.draw?
    self.decide_winner
  end

  def self.generate choice=["rock", "paper", "scissors"]
    @computer_selected = choice.sample
  end

  def self.selected
    @computer_selected
  end

  def self.counter
    @counter
  end

  private

  def self.draw?
    @computer_selected == @player.selected
  end

  def self.decide_winner
    return "#{@player.name} loses" if self.computer_has_trump?
    "#{@player.name} wins"
  end

  def self.computer_has_trump?
    @computer_selected == RANKING[self.trump]
  end

  def self.trump
    RANKING.index(@player.selected) + 1
  end

  def self.count
    @counter = 0 if @counter.nil?
    @counter += 1 unless @player == ''
  end
end
