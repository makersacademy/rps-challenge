require 'player'

describe Player do
  subject(:player) {described_class.new(name:name)}
  let(:name) { double(:name)}
  let(:point_increase) {Player::POINTS_PER_TURN}

  describe '#name' do
    it 'returns player name' do
      expect(player.name).to eq name
    end
  end

  describe '#points' do
    it 'returns player points at start of game' do
      expect(player.points).to eq Player::STARTING_POINTS
    end

    it 'increases points if won a turn' do
      expect { player.won_turn }.to change { player.points }.by(point_increase)
    end
  end
end
