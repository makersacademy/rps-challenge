require 'game'

describe Game do
  subject(:game) {described_class.new(session)}
  let(:session) {double :session }
  let(:session) { {"player_1" => player_1, "player_2" => player_2} }
  # let(:session) {double :session}
  # allow(session).to receive(:player_1).and_return(player_1)
  # allow(session).to receive(:player_2).and_return(player_2)
  let(:player_1) {double :player_1}
  let(:player_2) {double :player_2}

  before do
    # allow(game).to receive(:player_1).and_return(player_1)
    # allow(game).to receive(:player_2).and_return(player_2)
    allow(player_1).to receive(:move).and_return(:rock)
  end

  describe '#player_1' do
    it 'initializes with player_1' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'initializes with player_2' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#results' do
    it 'creates a draw' do
      allow(player_2).to receive(:move).and_return(:rock)
      expect(game.result).to eq :draw
    end
    it 'creates a win for p1' do
      allow(player_2).to receive(:move).and_return(:scissors)
      expect(game.result).to eq :win
    end
    it 'creates a lose for p1' do
      allow(player_2).to receive(:move).and_return(:paper)
      expect(game.result).to eq :lose
    end
  end

end
