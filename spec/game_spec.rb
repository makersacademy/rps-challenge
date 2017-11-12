require 'game'

describe Game do
  describe '.create' do
    it "Should create a new instance of Game" do
      expect(Game.create('Peter', 'cpu')).to be_an_instance_of(Game)
    end
  end
  describe '.access' do
    it "Should return an instance of Game" do
      game = Game.create('Peter', 'cpu')
      expect(Game.access).to eq game
    end
  end
  describe '#player' do
    it "Should return Peter" do
      game = Game.new('Peter', 'cpu')
      expect(game.player).to eq 'Peter'
    end
  end
  Game.create('Peter', 'cpu')
  describe '#rock_calculator' do
    it "Should return :player_win" do
      allow(Game.access.player).to receive(:selection).and_return(:rock)
      allow(Game.access.cpu).to receive(:selection).and_return(:scissors)
      expect(Game.access.result).to eq(:player_win)
    end
    it "Should return :cpu_win" do
      allow(Game.access.player).to receive(:selection).and_return(:rock)
      allow(Game.access.cpu).to receive(:selection).and_return(:paper)
      expect(Game.access.result).to eq(:cpu_win)
    end
    it "Should return :draw" do
      allow(Game.access.player).to receive(:selection).and_return(:rock)
      allow(Game.access.cpu).to receive(:selection).and_return(:rock)
      expect(Game.access.result).to eq(:draw)
    end
  end
  describe '#paper_calculator' do
    it "Should return :player_win" do
      allow(Game.access.player).to receive(:selection).and_return(:paper)
      allow(Game.access.cpu).to receive(:selection).and_return(:rock)
      expect(Game.access.result).to eq(:player_win)
    end
    it "Should return :cpu_win" do
      allow(Game.access.player).to receive(:selection).and_return(:paper)
      allow(Game.access.cpu).to receive(:selection).and_return(:scissors)
      expect(Game.access.result).to eq(:cpu_win)
    end
    it "Should return :draw" do
      allow(Game.access.player).to receive(:selection).and_return(:paper)
      allow(Game.access.cpu).to receive(:selection).and_return(:paper)
      expect(Game.access.result).to eq(:draw)
    end
  end
  describe '#scissors_calculator' do
    it "Should return :player_win" do
      allow(Game.access.player).to receive(:selection).and_return(:scissors)
      allow(Game.access.cpu).to receive(:selection).and_return(:paper)
      expect(Game.access.result).to eq(:player_win)
    end
    it "Should return :cpu_win" do
      allow(Game.access.player).to receive(:selection).and_return(:scissors)
      allow(Game.access.cpu).to receive(:selection).and_return(:rock)
      expect(Game.access.result).to eq :cpu_win
    end
    it "Should return :draw" do
      allow(Game.access.player).to receive(:selection).and_return(:scissors)
      allow(Game.access.cpu).to receive(:selection).and_return(:scissors)
      expect(Game.access.result).to eq :draw
    end
  end
end
