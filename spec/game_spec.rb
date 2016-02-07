require 'game'

describe Game do
  subject(:game) {described_class.new(session)}
  let(:session) {double :session }
  let(:session) { { "player_1" => player_1, "player_2" => player_2, "no_players" => no_players } }
  # let(:session) {double :session}
  # allow(session).to receive(:player_1).and_return(player_1)
  # allow(session).to receive(:player_2).and_return(player_2)
  let(:player_1) {double :player_1}
  let(:player_2) {double :player_2}
  let(:no_players) {double :no_players}

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
      expect(game.draw?).to eq true
      expect(game.win?).to eq false
      expect(game.lose?).to eq false
    end
    it 'creates a win for p1' do
      allow(player_2).to receive(:move).and_return(:scissors)
      expect(game.win?).to eq true
      expect(game.draw?).to eq false
      expect(game.lose?).to eq false
    end
    it 'creates a lose for p1' do
      allow(player_2).to receive(:move).and_return(:paper)
      expect(game.lose?).to eq true
      expect(game.win?).to eq false
      expect(game.draw?).to eq false
    end
  end

end
