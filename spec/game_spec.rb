require 'game'
describe Game do
  class MockRock
    def random_generator
      'rock'
    end
  end
  class MockPaper
    def random_generator
      'paper'
    end
  end
  class MockScissors
    def random_generator
      'scissors'
    end
  end

  let(:game) { described_class.new('Marie')}
  let(:player) { double 'fake player', name: 'Marie'}
  before(:each) { stub_const('Opponent', MockRock)}
  describe '#initialize' do
    it 'should initialize with a player' do
      expect(game.player.name).to eq 'Marie'
    end
  end
  describe '#rock' do
    it 'should set a variable to value rock' do
      game.rock
      expect(game.choice).to eq 'rock'
    end
  end
  describe '#paper' do
    it 'should set a variable to value rock' do
      game.paper
      expect(game.choice).to eq 'paper'
    end
  end
  describe '#scissors' do
    it 'should set a variable to value scissors' do
      game.scissors
      expect(game.choice).to eq 'scissors'
    end
  end
  describe '#opponent_play' do
    it 'should generate a random choice of rock, paper or scissors' do
      expect(game.opponents_play).to eq 'rock'
    end
    it 'should generate a random choice of rock, paper or scissors' do
      stub_const('Opponent', MockPaper)
      expect(game.opponents_play).to eq 'paper'
    end
    it 'should generate a random choice of rock, paper or scissors' do
      stub_const('Opponent', MockScissors)
      expect(game.opponents_play).to eq 'scissors'
    end
  end
  describe '#win?' do
    it 'should return true if player chooses rock and opponent generates scissors' do
      stub_const('Opponent', MockScissors)
      game.rock
      game.opponents_play
      expect(game.win?).to eq true
    end
    it 'should return true if player chooses paper and opponent generates rock' do
      stub_const('Opponent', MockRock)
      game.paper
      game.opponents_play
      expect(game.win?).to eq true
    end
    it 'should return true if player chooses scissors and opponent generates paper' do
      stub_const('Opponent', MockPaper)
      game.scissors
      game.opponents_play
      expect(game.win?).to eq true
    end
    it 'should return tied if player chooses rock and opponent generates rock' do
      stub_const('Opponent', MockRock)
      game.rock
      game.opponents_play
      expect(game.win?).to eq false
    end
  end
end
