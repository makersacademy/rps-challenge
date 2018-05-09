describe Game do
  subject(:game) { described_class.new(:rock) }
  let(:player_weapon) { double(:player_weapon) }

  describe '#initilize' do
    it 'should receive player weapon on initilize' do
      expect(game.player_weapon).to eq :rock
    end
  end

  describe '#computer_weapon' do
    it 'should make a random selection of weapons' do
      allow(Game::WEAPONS).to receive(:sample).and_return(:paper)
      expect(game.computer_weapon).to eq :paper
    end
  end

  describe '#result' do
    context 'Player choses Rock' do
      it 'should return win if computershare has scissors' do
        allow(Game::WEAPONS).to receive(:sample).and_return(:scissors)
        expect(game.result).to eq :win
      end
    end
  end
end
