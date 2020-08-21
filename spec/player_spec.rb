require "player"

describe Player do 
  let(:player) { Player.new("Kiro") }

  it { expect(player.name.is_a?(String)).to be true }
  

end
