require_relative './player.rb'
require_relative './com.rb'
require_relative './p1wins.rb'
require_relative './p2wins.rb'
require_relative './draw.rb'


class Game
attr_reader :p1, :p2

  def initialize(p1_name, p2_name = nil)
    @p1 = Player.new(p1_name)
    @p2 = p2_name.nil? ? Com.new : Player.new(p2_name)
  end

  def self.create(p1_name)
    @game = Game.new(p1_name)
  end

  def self.instance
    @game
  end

  def result
    outcome.result(@p1, @p2)
  end

  private

  def outcome
    logic[@p1.weapon][@p2.weapon]
  end

  def logic                                         #TODO extract logic/rules
    [ [Draw, P2Wins, P1Wins, P1Wins, P2Wins],  # rck
      [P1Wins, Draw, P2Wins, P2Wins, P1Wins],  # ppr
      [P2Wins, P1Wins, Draw, P1Wins, P2Wins],  # scs
      [P2Wins, P1Wins, P2Wins, Draw, P1Wins],  # lzd
      [P1Wins, P2Wins, P1Wins, P2Wins, Draw] ] # spk
   #p2 rck      ppr    scs     lzd     spk       p1
  end

end
