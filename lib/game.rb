require './lib/player'

class Game

  A_POINT = 1
  attr_reader :player, :npc_choice, :npc_score

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
    @npc_score = 0
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
    @player.score += A_POINT if result == "YOU WIN!"
    @npc_score += A_POINT if result == "YOU LOSE!"
  end

end
