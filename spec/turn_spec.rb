require 'turn'
describe Turn do
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
  let(:turn) { described_class.new }
  before(:each) { stub_const('Opponent', MockRock) } 
  describe '#rock' do
    it 'should set a variable to value rock' do
      turn.rock
      expect(turn.choice).to eq 'rock'
    end
  end
  describe '#paper' do
    it 'should set a variable to value rock' do
      turn.paper
      expect(turn.choice).to eq 'paper'
    end
  end
  describe '#scissors' do
    it 'should set a variable to value scissors' do
      turn.scissors
      expect(turn.choice).to eq 'scissors'
    end
  end
  describe '#opponent_play' do
    it 'should generate a random choice of rock, paper or scissors' do
      expect(turn.opponents_play).to eq 'rock'
    end
    it 'should generate a random choice of rock, paper or scissors' do
      stub_const('Opponent', MockPaper)
      expect(turn.opponents_play).to eq 'paper'
    end
    it 'should generate a random choice of rock, paper or scissors' do
      stub_const('Opponent', MockScissors)
      expect(turn.opponents_play).to eq 'scissors'
    end
  end
  describe '#win?' do
    it 'should return true if player chooses rock and opponent generates scissors' do
      stub_const('Opponent', MockScissors)
      turn.rock
      turn.opponents_play
      expect(turn.win?).to eq true
    end
    it 'should return true if player chooses paper and opponent generates rock' do
      stub_const('Opponent', MockRock)
      turn.paper
      turn.opponents_play
      expect(turn.win?).to eq true
    end
    it 'should return true if player chooses scissors and opponent generates paper' do
      stub_const('Opponent', MockPaper)
      turn.scissors
      turn.opponents_play
      expect(turn.win?).to eq true
    end
    it 'should return tied if player chooses rock and opponent generates rock' do
      stub_const('Opponent', MockRock)
      turn.rock
      turn.opponents_play
      expect(turn.win?).to eq nil
    end
  end
end
