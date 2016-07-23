require './lib/player'

class Game

  A_POINT = 1

  attr_reader :player, :npc_choice, :combos, :npc_score
  attr_accessor :weapon

  def self.create(name)
    @game = Game.new(name)
  end

  def self.instance
    @game
  end

  def initialize(player)
    @player = player
    @combos = {rr: :draw, rp: :lose, rs: :win,
               pr: :win,  pp: :draw, ps: :lose,
               sr: :lose, sp: :win,  ss: :draw}
  end

  def npc_chooses_weapon
    @npc_choice = ['rock','paper','scissors'].sample
  end

  def result
    combo = ''
    combo << @player.weapon[0] + @npc_choice[0]
    result = @combos[combo.to_sym].to_s.upcase
    result == 'WIN' || result == 'LOSE' ? "YOU #{result}!" : "IT'S A DRAW!"
  end

  def calculate_score
    @npc_score ||= 0
    @player.score += A_POINT if win?
    @npc_score += A_POINT if lose?
  end

  private

  def win?
    result == "YOU WIN!"
  end

  def lose?
    result == "YOU LOSE!"
  end

end
