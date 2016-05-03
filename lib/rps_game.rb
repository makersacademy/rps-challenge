require_relative './attack'

class RpsGame
  attr_reader :player_name,

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

  def set_player_attack attack_name
    if @rock.name == attack_name
      @player_attack = @rock
    elsif @paper.name == attack_name
      @player_attack = @paper
    elsif @scissors.name == attack_name
      @player_attack = @scissors
    end
  end

  def player_attack_name
    @player_attack.name
  end

  def ai_attack_name
    @ai_attack.name
  end

  def determine_outcome
    set_ai_attack
    if @player_attack.name == @ai_attack.name
      @outcome = 'draw'
    elsif @player_attack.weakness == @ai_attack.name
      @outome = 'lose'
    else
      @outcome = 'win'
    end
  end

  private

  def set_ai_attack
    @ai_attack = [@rock, @paper, @scissors].sample
  end

end