require 'game'

describe Game do
  let(:player_rock) { allow(Game.access.player).to receive(:selection).and_return(:rock) }
  let(:player_paper) { allow(Game.access.player).to receive(:selection).and_return(:paper) }
  let(:player_scissors) { allow(Game.access.player).to receive(:selection).and_return(:scissors) }
  let(:cpu_rock) { allow(Game.access.cpu).to receive(:selection).and_return(:rock) }
  let(:cpu_paper) { allow(Game.access.cpu).to receive(:selection).and_return(:paper) }
  let(:cpu_scissors) { allow(Game.access.cpu).to receive(:selection).and_return(:scissors) }
  let(:result) { Game.access.result }

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
      player_rock
      cpu_scissors
      expect(result).to eq(:player_win)
    end
    it "Should return :cpu_win" do
      player_rock
      cpu_paper
      expect(result).to eq(:cpu_win)
    end
    it "Should return :draw" do
      player_rock
      cpu_rock
      expect(result).to eq(:draw)
    end
  end
  describe '#paper_calculator' do
    it "Should return :player_win" do
      player_paper
      cpu_rock
      expect(result).to eq(:player_win)
    end
    it "Should return :cpu_win" do
      player_paper
      cpu_scissors
      expect(result).to eq(:cpu_win)
    end
    it "Should return :draw" do
      player_paper
      cpu_paper
      expect(result).to eq(:draw)
    end
  end
  describe '#scissors_calculator' do
    it "Should return :player_win" do
      player_scissors
      cpu_paper
      expect(result).to eq(:player_win)
    end
    it "Should return :cpu_win" do
      player_scissors
      cpu_rock
      expect(result).to eq :cpu_win
    end
    it "Should return :draw" do
      player_scissors
      cpu_scissors
      expect(result).to eq :draw
    end
  end
end
