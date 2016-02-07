require 'game'

describe Game do
  subject(:game) {described_class.new(session)}
  let(:session) {double :session }
  let(:session) { { "player_1" => player_1, "player_2" => player_2, "no_players" => no_players } }
  let(:player_1) {double :player_1}
  let(:player_2) {double :player_2}
  let(:no_players) {double :no_players}

  before do
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

  describe 'possible results for p1 rock' do
    it 'draws against rock' do
      allow(player_2).to receive(:move).and_return(:rock)
      expect(game.lose?).to eq false
      expect(game.win?).to eq false
      expect(game.draw?).to eq true
    end
    it 'loses against paper' do
      allow(player_2).to receive(:move).and_return(:paper)
      expect(game.lose?).to eq true
      expect(game.win?).to eq false
      expect(game.draw?).to eq false
    end
    it 'wins against scissors' do
      allow(player_2).to receive(:move).and_return(:scissors)
      expect(game.lose?).to eq false
      expect(game.win?).to eq true
      expect(game.draw?).to eq false
    end
    it 'wins against lizzard' do
      allow(player_2).to receive(:move).and_return(:lizzard)
      expect(game.lose?).to eq false
      expect(game.win?).to eq true
      expect(game.draw?).to eq false
    end
    it 'loses against spock' do
      allow(player_2).to receive(:move).and_return(:spock)
      expect(game.lose?).to eq true
      expect(game.win?).to eq false
      expect(game.draw?).to eq false
    end
  end

  describe 'possible results for p1 paper' do
    before do
      allow(player_1).to receive(:move).and_return(:paper)
    end
    it 'wins against rock' do
      allow(player_2).to receive(:move).and_return(:rock)
      expect(game.lose?).to eq false
      expect(game.win?).to eq true
      expect(game.draw?).to eq false
    end
    it 'draws against paper' do
      allow(player_2).to receive(:move).and_return(:paper)
      expect(game.lose?).to eq false
      expect(game.win?).to eq false
      expect(game.draw?).to eq true
    end
    it 'loses against scissors' do
      allow(player_2).to receive(:move).and_return(:scissors)
      expect(game.lose?).to eq true
      expect(game.win?).to eq false
      expect(game.draw?).to eq false
    end
    it 'loses against lizzard' do
      allow(player_2).to receive(:move).and_return(:lizzard)
      expect(game.lose?).to eq true
      expect(game.win?).to eq false
      expect(game.draw?).to eq false
    end
    it 'wins against spock' do
      allow(player_2).to receive(:move).and_return(:spock)
      expect(game.lose?).to eq false
      expect(game.win?).to eq true
      expect(game.draw?).to eq false
    end
  end

  describe 'possible results for p1 scissors' do
    before do
      allow(player_1).to receive(:move).and_return(:scissors)
    end
    it 'loses against rock' do
      allow(player_2).to receive(:move).and_return(:rock)
      expect(game.lose?).to eq true
      expect(game.win?).to eq false
      expect(game.draw?).to eq false
    end
    it 'wins against paper' do
      allow(player_2).to receive(:move).and_return(:paper)
      expect(game.lose?).to eq false
      expect(game.win?).to eq true
      expect(game.draw?).to eq false
    end
    it 'draw against scissors' do
      allow(player_2).to receive(:move).and_return(:scissors)
      expect(game.lose?).to eq false
      expect(game.win?).to eq false
      expect(game.draw?).to eq true
    end
    it 'wins against lizzard' do
      allow(player_2).to receive(:move).and_return(:lizzard)
      expect(game.lose?).to eq false
      expect(game.win?).to eq true
      expect(game.draw?).to eq false
    end
    it 'loses against spock' do
      allow(player_2).to receive(:move).and_return(:spock)
      expect(game.lose?).to eq true
      expect(game.win?).to eq false
      expect(game.draw?).to eq false
    end
  end

  describe 'possible results for p1 lizzard' do
    before do
      allow(player_1).to receive(:move).and_return(:lizzard)
    end
    it 'loses against rock' do
      allow(player_2).to receive(:move).and_return(:rock)
      expect(game.lose?).to eq true
      expect(game.win?).to eq false
      expect(game.draw?).to eq false
    end
    it 'wins against paper' do
      allow(player_2).to receive(:move).and_return(:paper)
      expect(game.lose?).to eq false
      expect(game.win?).to eq true
      expect(game.draw?).to eq false
    end
    it 'loses against scissors' do
      allow(player_2).to receive(:move).and_return(:scissors)
      expect(game.lose?).to eq true
      expect(game.win?).to eq false
      expect(game.draw?).to eq false
    end
    it 'draw against lizzard' do
      allow(player_2).to receive(:move).and_return(:lizzard)
      expect(game.lose?).to eq false
      expect(game.win?).to eq false
      expect(game.draw?).to eq true
    end
    it 'win against spock' do
      allow(player_2).to receive(:move).and_return(:spock)
      expect(game.lose?).to eq false
      expect(game.win?).to eq true
      expect(game.draw?).to eq false
    end
  end

  describe 'possible results for p1 scissors' do
    before do
      allow(player_1).to receive(:move).and_return(:spock)
    end
    it 'win against rock' do
      allow(player_2).to receive(:move).and_return(:rock)
      expect(game.lose?).to eq false
      expect(game.win?).to eq true
      expect(game.draw?).to eq false
    end
    it 'loses against paper' do
      allow(player_2).to receive(:move).and_return(:paper)
      expect(game.lose?).to eq true
      expect(game.win?).to eq false
      expect(game.draw?).to eq false
    end
    it 'win against scissors' do
      allow(player_2).to receive(:move).and_return(:scissors)
      expect(game.lose?).to eq false
      expect(game.win?).to eq true
      expect(game.draw?).to eq false
    end
    it 'loses against lizzard' do
      allow(player_2).to receive(:move).and_return(:lizzard)
      expect(game.lose?).to eq true
      expect(game.win?).to eq false
      expect(game.draw?).to eq false
    end
    it 'draw against spock' do
      allow(player_2).to receive(:move).and_return(:spock)
      expect(game.lose?).to eq false
      expect(game.win?).to eq false
      expect(game.draw?).to eq true
    end
  end

end
