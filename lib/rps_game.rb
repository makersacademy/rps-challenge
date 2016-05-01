class RpsGame
  attr_reader :name

  def self.set_instance(name)
    @game = RpsGame.new(name)
  end

  def self.instance
    @game
  end

  def initialize(name, attack_class = Attack)
    @player_name = name
    @rock = attack_class.new('rock', 'paper')
    @paper = attack_class.new('paper', 'scissors')
    @scissors = attack_class.new('scissors', 'rock')
  end

  def attack attack
    if @rock.name == attack
      @player_attack = @rock
    elsif @paper.name == attack
      @player_attack = @paper
    elsif @scissors.name == attack
      @player_attack = @scissors
    end
  end

  def determine_outcome
    ai_attack = set_ai_attack
    if @player_attack.name == ai_attack
      @outcome = 'draw'
    elsif @player_attack.weakness == ai_attack
      @outome = 'lose'
    else
      @outcome = 'win'
    end
  end

  private

  def set_ai_attack
    ['rock', 'paper', 'scissors'].sample
  end

end