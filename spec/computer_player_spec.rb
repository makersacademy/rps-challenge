require 'computer_player'

describe Computer_Player do
  subject(:npc) { Computer_Player.new}

    describe '#play'do
      it 'produces either rock, paper, or scissors'do
        expect([:rock, :paper, :scissors]).to include(npc.play)
    end
  end
end
