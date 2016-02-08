require 'computer_player'

describe Computer_Player do
  subject(:npc) { Computer_Player.new}

    describe '#play'do
      it 'can choose rock'do
        allow(Kernel).to receive(:rand) {0}
        expect(npc.play).to eq :rock
    end
    it 'can choose paper'do
      allow(Kernel).to receive(:rand) {1}
      expect(npc.play).to eq :paper
    end
    it 'can choose scissors'do
      allow(Kernel).to receive(:rand){2}
      expect(npc.play).to eq :scissors
    end
  end
end
