require './lib/player'

class Game

  attr_reader :player, :npc_choice, :combos
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

end
