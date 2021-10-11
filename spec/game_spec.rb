describe Game do

  subject(:game) { described_class.new(player_1, player_2) }

  let(:player_1) { double :player}
  let(:player_2) { double :player}

  describe '#result' do
    it 'player 1 wins' do
     allow(game.player_1).to receive(:set_weapon).and_return(:rock)
      expect(game.result("rock", :scissors)).to eq :win
    end

    it 'player 1 loses' do
      allow(game.player_1).to receive(:set_weapon).and_return(:rock)
      expect(game.result("rock", :paper)).to eq :lose
    end

    it 'player 1 draws' do
      allow(game.player_1).to receive(:set_weapon).and_return(:rock)
      expect(game.result("rock", :rock)).to eq :draw
    end

  end

end